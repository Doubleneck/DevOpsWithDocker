FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

EXPOSE 8080

RUN go build

CMD ["./server"]
