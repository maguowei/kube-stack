# kafka

```python
# consumer
import json
from kafka import KafkaConsumer


consumer = KafkaConsumer('hello', group_id='hello', bootstrap_servers='kafka-0.kafka-headless.default.svc.cluster.local',
                         auto_offset_reset='earliest', enable_auto_commit=False,
                         value_deserializer=lambda m: json.loads(m.decode()))

for msg in consumer:
    print(msg)
```

```python
# producer
import json
from kafka import KafkaProducer


producer = KafkaProducer(bootstrap_servers='kafka-0.kafka-headless.default.svc.cluster.local', value_serializer=lambda v: json.dumps(v).encode())

for i in range(1000):
    future = producer.send('hello', {'message': f'hello world-{i}'})
    # result = future.get(timeout=60)
    # print(result)

producer.close()
```

## Ref

- [kafka documentation](https://kafka.apache.org/081/documentation.html)
- [Strimzi: Accessing Kafka: Part 1 - Introduction](https://strimzi.io/blog/2019/04/17/accessing-kafka-part-1/)
- [helm/charts kafka](https://github.com/helm/charts/blob/master/incubator/kafka/templates/statefulset.yaml#L208)
- [Kubernetes中的Kafka集群如何在外部访问](https://xujiyou.work/%E5%A4%A7%E6%95%B0%E6%8D%AE/Kafka/Kubernetes%E4%B8%AD%E7%9A%84Kafka%E9%9B%86%E7%BE%A4%E5%A6%82%E4%BD%95%E5%9C%A8%E5%A4%96%E9%83%A8%E8%AE%BF%E9%97%AE.html)