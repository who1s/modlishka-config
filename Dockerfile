FROM alpine 
FROM golang
RUN go get -u github.com/drk1wi/Modlishka
COPY ./autocert.go /go/src/github.com/drk1wi/Modlishka/plugin/autocert.go
RUN cd $GOPATH/src/github.com/drk1wi/Modlishka/ && make
COPY modlishka.json /tmp/
