FROM alpine

WORKDIR '/app'

RUN apk add --update g++
RUN apk add --update python3
RUN apk add --update make 
RUN apk add --update gcc

COPY ./ ./
RUN make

CMD [ "sh" ]

