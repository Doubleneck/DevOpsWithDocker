FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN https://localhost:8080

EXPOSE 8080

RUN go build

CMD ["./server"]
