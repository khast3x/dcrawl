FROM golang:alpine

RUN apk --no-cache --update add git
RUN git clone https://github.com/kgretzky/dcrawl.git

WORKDIR dcrawl
RUN go get -v golang.org/x/net/publicsuffix
RUN go build dcrawl.go
ENTRYPOINT ["./dcrawl"]
CMD ["-h"]
