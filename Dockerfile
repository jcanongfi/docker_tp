# Docker builder for Golang
FROM golang as builder
LABEL maintainer "Julien CANON <julien.canon@gfi.fr>"
COPY . .
RUN go build hello-world.go

# Docker run Golang app
FROM scratch
LABEL maintainer "Julien CANON <julien.canon@gfi.fr>"
COPY --from=builder /go/hello-world .
CMD ["/hello-world"]
