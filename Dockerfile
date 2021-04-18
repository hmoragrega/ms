FROM golang:1.16 as builder

WORKDIR /go/src/ms

COPY microservice.go .
RUN CGO_ENABLED=0 go build -ldflags "-s -w" -o bin microservice.go

FROM scratch AS release

COPY --from=builder /go/src/ms/bin /ms

CMD ["/ms"]
