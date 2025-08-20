FROM golang:1.23
COPY ./app /app
WORKDIR /app
RUN go build -o /go/bin/api /app/*.go
EXPOSE 50007
WORKDIR /go/bin
ENTRYPOINT ["./api"]