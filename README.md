# docker-go-base
A Golang Docker image with a collection of modules and tools

Merge dependencies from multiple go.mod files

## Usage

```shell
go run . ../dependencies/go.mod
```

or

```shell
./merge_mod.sh $new_module_name go.mod.1 go.mod.2 > go.mod
```