# JetBrains projector

## Run

```bash
# run datagrip
$ kubectl run datagrip --image=registry.jetbrains.team/p/prj/containers/projector-datagrip --port=8887 --expose=true
$ kubectl port-forward service/datagrip 8887:8887

# run goland
$ kubectl run goland --image=registry.jetbrains.team/p/prj/containers/projector-goland --port=8887 --expose=true

# run pycharm
$ kubectl run pycharm --image=registry.jetbrains.team/p/prj/containers/projector-pycharm-p --port=8887 --expose=true
# or
$ kubectl run pycharm-c --image=registry.jetbrains.team/p/prj/containers/projector-pycharm-c --port=8887 --expose=true
```

## Ref

- [JetBrains/projector-docker](https://github.com/JetBrains/projector-docker)