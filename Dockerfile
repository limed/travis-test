FROM golang:alpine AS build

WORKDIR /go/src/github.com/limed/travis-test/

COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

FROM alpine:latest

RUN adduser -S -D -H -h /app appuser
USER appuser

COPY --from=build /go/src/github.com/limed/travis-test/main /app/main
WORKDIR /app

CMD ["./main"]
