# Build stage
FROM golang:1.18-alpine AS build
RUN mkdir /app
COPY ./go-app/. /app
WORKDIR /app
RUN go mod init main
RUN go build -o main .

# Final stage
FROM alpine
COPY --from=build /app/main /app/main
CMD ["/app/main"]



