#docker 
#docker-files
## Copy files from Docker to Host

```bash
docker cp <containerId>:/file/path/within/container /host/path/target
```

## From Host to Docker
```bash
docker cp /host/path/target <containerId>:/file/path/within/container
```

## Execute console

```bash
docker exec -it <container_id_or_name> ./bin.bash
```