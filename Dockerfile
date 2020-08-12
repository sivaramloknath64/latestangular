### STAGE 1: Build ###
FROM node:8-alpine
WORKDIR /app
COPY package.json package-lock.json ./

RUN npm run build

EXPOSE 8081
# start app
CMD ["npm", "start"]
