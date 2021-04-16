FROM node:10-alpine

WORKDIR /app
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 1080 1025

ENTRYPOINT ["bin/maildev"]
CMD ["--web", "1080", "--smtp", "1025"]
