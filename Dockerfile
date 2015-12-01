FROM mhart/alpine-node:5.1.0

WORKDIR /app

RUN apk add --update tmux && \
  npm install -g babel babel-cli nodemon eye commander

COPY init /init

ENTRYPOINT ["/init"]
