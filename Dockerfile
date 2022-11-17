FROM golang:1.19-alpine AS builder

WORKDIR /build
COPY go.mod ./
#COPY go.sum ./
RUN go mod download
COPY ./src ./src

RUN cd ./src && go build -ldflags "-s -w" -o exec

FROM alpine
WORKDIR  app
COPY --from=builder /build/src/exec ./exec
CMD ["./exec"]
