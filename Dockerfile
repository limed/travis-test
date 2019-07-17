FROM golang:alpine as build


RUN mkdir -p /build
WORKDIR /build

COPY main.go /build
RUN go build -o main .

FROM alpine

RUN adduser -S -D -H -h /app appuser
USER appuser

COPY --from=builder /build/main /app/
WORKDIR /app

CMD ["./main"]
