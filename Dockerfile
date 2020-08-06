ARG VERSION
FROM node:12.18.3-alpine3.12
RUN npm install -g swagger-cli@$VERSION
RUN apk add --update --no-cache make
ENTRYPOINT ["swagger-cli"]
CMD ["-h"]
