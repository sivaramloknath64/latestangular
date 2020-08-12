### STAGE 1: Build ###
FROM node:12.18.3-alpine
WORKDIR /app
COPY package.json package-lock.json ./

RUN npm install
COPY . .
RUN npm run build

# start app
CMD ["npm", "start"]
