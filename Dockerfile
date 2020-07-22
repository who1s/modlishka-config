FROM alpine 
FROM golang
RUN go get -u github.com/drk1wi/Modlishka
RUN cd $GOPATH/src/github.com/drk1wi/Modlishka/ && make
COPY modlishka.json /tmp/
