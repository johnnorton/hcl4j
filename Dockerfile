FROM node:12-alpine
RUN 
Learn more about the "RUN " Dockerfile command.
apk add --no-cache python2 g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
