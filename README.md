## Description

A build environment to build the extended version of Hugo for centos.

## Build

```
docker build -t hugo-build-centos .
docker run -it --rm -v $PWD:/work -e HUGO_VERSION=$HUGO_VERSION hugo-build-centos:latest
```

Then, copy `hugo` to the server.

## Links

- [Official Hugo website](https://gohugo.io/)
- [Hugo Github Repo](https://github.com/gohugoio/hugo)
