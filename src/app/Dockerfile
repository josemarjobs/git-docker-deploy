FROM alpine:latest

RUN apk --no-cache add ca-certificates

RUN mkdir /server
WORKDIR /server

ADD bin/app /server

CMD [ "./app" ]