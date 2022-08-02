FROM golang:1.18 

ENV GO111MODULE on
ENV GOPRIVATE=github.com/latonaio
WORKDIR /go/src/github.com/latonaio
COPY go.mod .
RUN go mod download
COPY . .

CMD go run *.go
