FROM node:16-alpine

WORKDIR /app
EXPOSE 3000
CMD ["npm", "run", "start"]

COPY package.json ./tsconfig* ./yarn* ./.yarn* ./
RUN yarn config delete proxy; yarn config delete http-proxy; yarn config delete https-proxy; yarn install

COPY ./public ./public
COPY ./src ./src


