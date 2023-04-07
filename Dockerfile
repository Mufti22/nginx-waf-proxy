FROM golang:1.16-alpine
WORKDIR /app
COPY . .
RUN apk update && \
    apk add --no-cache git && \
    go build -o main .
CMD ["./main"]
