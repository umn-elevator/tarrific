FROM node:19-alpine

WORKDIR /root

RUN apk add wget unzip

RUN wget https://github.com/UMN-LATIS/tarrific/archive/refs/heads/main.zip && unzip main.zip && rm main.zip
RUN cd tarrific-main && npm install

WORKDIR /root/tarrific-main
ENTRYPOINT [ "node", "index.js" ]