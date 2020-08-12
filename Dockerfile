### STAGE 1: Build ###
FROM node:8
WORKDIR /app
COPY package.json package-lock.json ./

RUN npm install
COPY . .
RUN npm run build

EXPOSE 8082
# start app
CMD ["npm", "start"]
