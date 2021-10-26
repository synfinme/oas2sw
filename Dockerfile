FROM alpine:3.14
RUN apk update && \
    apk add --no-cache npm && \
    npm install -g api-spec-converter
ENTRYPOINT ["/usr/local/lib/node_modules/api-spec-converter/bin/api-spec-converter"]
CMD ["-h"]
