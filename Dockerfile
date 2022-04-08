FROM alpine

ADD build/linux/amd64/hello /bin/

ENTRYPOINT ["/bin/hello-drone"]