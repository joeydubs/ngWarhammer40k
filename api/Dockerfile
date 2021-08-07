FROM node:14-alpine
WORKDIR /usr/src/api
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 6000
CMD ["node", "app.js"]

