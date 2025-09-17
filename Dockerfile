FROM golang:1.25.1-alpine

WORKDIR /go/src/github.com/Hronom/aws-opensearch-proxy
COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o aws-opensearch-proxy

FROM alpine:3.22.1
LABEL name="aws-opensearch-proxy" \
      version="latest"

RUN apk --no-cache add ca-certificates
WORKDIR /home/
COPY --from=0 /go/src/github.com/Hronom/aws-opensearch-proxy/aws-opensearch-proxy /usr/local/bin/

ENV PORT_NUM 9201
EXPOSE ${PORT_NUM}

ENTRYPOINT ["aws-opensearch-proxy"]
CMD ["-h"]
