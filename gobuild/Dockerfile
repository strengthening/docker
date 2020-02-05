FROM golang:1.12-stretch

# The default GOPATH is /go

RUN go get github.com/gorilla/websocket
RUN go get github.com/google/uuid
RUN go get github.com/go-sql-driver/mysql

COPY --from=registry.cn-hongkong.aliyuncs.com/strengthening/gobase:latest /go/src/github.com/strengthening/gobase /go/src/github.com/strengthening/gobase
COPY --from=registry.cn-hongkong.aliyuncs.com/strengthening/goghostex:latest /go/src/github.com/strengthening/goghostex /go/src/github.com/strengthening/goghostex
COPY --from=registry.cn-hongkong.aliyuncs.com/strengthening/cryptofinance:latest /go/src/github.com/strengthening/cryptofinance /go/src/github.com/strengthening/cryptofinance

