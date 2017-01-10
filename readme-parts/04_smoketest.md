
### Smoketest

```
docker run --net=host -d elek/zeppelin
docker run --net=host -d elek/storm-nimbus
docker run --net=host -d elek/storm-ui
docker run --net=host -d elek/storm-supervisor
```

