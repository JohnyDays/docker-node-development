FROM mhart/alpine-node:5.2.0

WORKDIR /app

RUN apk add --update tmux && \
  npm install -g babel-cli nodemon eye commander

COPY init /init

ENTRYPOINT ["/init"]
