 input {
	kafka {
		type => "log"
		bootstrap_servers => "1.example.com:9092,2.example.com:9092"
		topics => ["my_app_log_collect"]
		group_id => "logstash"
		consumer_threads => 5
  	}
}	

filter {
    if [type] == "log" {
		if [message] =~ "nginx_access" {
			if [message] =~ /^\s*$/ {
				drop { }
			}
		
			grok {
				match => {"message" => '%{DATA:log_type},%{HTTPDATE:timestamp},%{NUMBER:request_length:int},%{NUMBER:request_time:float},%{NUMBER:body_bytes_sent:int},%{NUMBER:http_status:int},%{IP:remote_addr}-(?<x_forwarded_for>%{IP:forwarded_for}(?:, .*)?)-%{IP:real_ip},%{WORD:method} %{URIPATH:request_path}(?:%{URIPARAM})? HTTP/%{NUMBER:httpversion},%{QS:referer},%{QS:agent},%{IPORHOST:host},(?<upstream_response_times>(%{NUMBER}|-)(, (%{NUMBER}|-))*),"%{DATA:uid}","%{DATA:cid}"'}
			}
			
			geoip {
				source => "real_ip"
				target => "geoip"
				add_field => [ "[geoip][coordinates]", "%{[geoip][longitude]}" ]
				add_field => [ "[geoip][coordinates]", "%{[geoip][latitude]}" ]
			}
			# sum the upstream response times and remove the raw field
			ruby {
				code => "event.set('response_time', event.get('upstream_response_times').gsub(/-/, '0').split(', ').map(&:to_f).inject(:+))"
				remove_field => [ 'upstream_response_times' ]
			}

			ruby {
				code => "event.set('req_path', event.get('request_path'))"
			}

			mutate {
				convert => [ "[geoip][coordinates]", "float" ]
				convert => [ "request_length", "integer" ]
				convert => [ "body_bytes_sent", "integer" ]
				convert => [ "http_status", "integer" ]
				convert => [ "request_time", "float" ]
				convert => [ "response_time", "float" ]
				split => { "req_path" => "/" }

				add_field => {
					"request_api" => "%{method} %{request_path}"
					"app_name" => "%{[req_path][1]}"
				}
			}

		} else {
			mutate {
				split => {"message" => "|"}
				add_field => {
					"log_type" => "app_log"
					"app_name" => "%{[message][0]}"
					"app_env"  => "%{[message][1]}"
					"pod_name" => "%{[message][2]}"
					"level" => "%{[message][3]}"
					"log_time" => "%{[message][4]}"
					"log_message" => "%{[message][5]}"
				}
			}
			json {
				source => "log_message"
				target => "doc"
				remove_field => ["log_message"]
			}
		}
	}
}

output {
	if [log_type] == "app_log" {
		elasticsearch {
			hosts => ["elasticsearch:9200"]
			index => "logstash.example.%{log_type}.%{app_name}.%{app_env}-%{+YYYY.MM.dd}"
		}
	}

	if [log_type] == "nginx_access" {
		elasticsearch {
			hosts => ["elasticsearch:9200"]
			index => "logstash.example.%{log_type}.%{host}.%{app_name}-%{+YYYY.MM.dd}"
		}
	}
}