# A microservice in Go

This microservice will answer to HTTP requests on port 80 with a mini version of "hello world"

## Build

```
docker build -t ms .
```

## Run

```
docker run -p 80:80 ms
```
