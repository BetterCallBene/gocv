# to build this docker image:
#   docker build .
FROM ghcr.io/hybridgroup/opencv:4.8.0

ENV GOPATH /go

COPY . /go/src/gocv.io/x/gocv/

WORKDIR /go/src/gocv.io/x/gocv
RUN go build -tags example -o /build/gocv_version ./cmd/version/ && mkdir -p /go/src/gocv.io/x/gocv/work

WORKDIR /go/src/gocv.io/x/gocv/work

