FROM golang:1.6

COPY . /go/src/github.com/maklesoft/padlock-cloud
WORKDIR /go/src/github.com/maklesoft/padlock-cloud
RUN go get ...
RUN go install ...

# ENV	PADLOCK_EMAIL_USERNAME
# ENV	PADLOCK_EMAIL_SERVER
# ENV	PADLOCK_EMAIL_PORT
# ENV	PADLOCK_EMAIL_PASSWORD
# ENV	PADLOCK_NOTIFY_EMAIL
ENV	PADLOCK_ASSETS_PATH ./assets
ENV	PADLOCK_DB_PATH /data
VOLUME ["/data"]
EXPOSE 80
CMD ["padlock-cloud", "-p", "80"]
