# use this empty Dockerfile to build your assignment
#
# Overview of this assignment
# use the instructions from developer below to create a working Dockerfile
# feel free to add command inline below or use a new file, up to you (but must be named Dockerfile)
# once Dockerfile builds correctly, start container locally to make sure it works on http://localhost
# then ensure image is named properly for your Docker Hub account with a new repo name
# push to Docker Hub, then go to https://hub.docker.com and verify
# then remove local image from cache
# then start a new container from your Hub image, and watch how it auto downloads and runs
# test again that it works at http://localhost
#
# We are going to build an image with a go app and then we're going to do the same image in a multi-stage build and are going to compare sizes
#
# Instructions from the app developer
# - First Image:
# - create a Dockerfile.full file and do the following
# - you should use the image golang:1.7.3 as builder
# - change into /go/src/helloworld directory
# - copy app.go to the current directory
# - run go get -d -v golang.org/x/net/html
# - after the previous run then run CGO_ENABLED=0 GOOS=linux go build -a installsuffix cgo -o app .
# - execute ./app
# - build the image and tag it as fullgo
#
# - Second Image:
# - copy Dockerfile.full to Dockerfile.multistage
# - add a new stage from alpine:latest
# - run apk --no-cache add ca-certificates
# - change directory into /root/
# - from builder copy /go/src/helloworld/app into the current directory
# - execute ./app
# - build the image and tag it as multistagego
#
# - list the images and compare the sizes
# - execute fullgo with --rm parameter and expose port 80:80
# - go to http://localhost
# - ctrl+c to exit the container
# - execute multistagego with --rm parameter and expose port 80:80
# go to http://localhost
# - ctrl+c to exit the container


FROM golang:1.7.3 as builder
WORKDIR /go/src/helloworld
COPY app.go .
RUN go get -d -v golang.org/x/net/html \
  && CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

#FROM alpine:latest  
#RUN apk --no-cache add ca-certificates
#WORKDIR /root/
#COPY --from=builder /go/src/helloworld/app .
CMD ["./app"]
