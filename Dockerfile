# syntax=docker/dockerfile:1
#!/bin/sh

FROM parseplatform/parse-server

RUN chmod -R 777 *; exit 0
RUN node -v
RUN npm config set prefix '~/.npm-global'

RUN npm install -g parse-server mongodb-runner

COPY . .

CMD mongodbq-runner start ; npm start