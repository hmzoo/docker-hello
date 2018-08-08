FROM golang:latest 
EXPOSE 8080
RUN mkdir /app
ADD . /app/ 
WORKDIR /app 
RUN go get golang.org/x/net/html
RUN go build -o main . 
CMD ["/app/main"]

