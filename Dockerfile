FROM golang:1.16.5-alpine3.14

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN apk update && apk add git

RUN go get "github.com/gorilla/mux"

RUN go build -o main .

CMD ["/app/main"]