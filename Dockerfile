FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 70

CMD ["node","server.js"]