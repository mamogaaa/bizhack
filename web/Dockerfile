FROM node
WORKDIR /usr/src/app
RUN npm install -g yarn
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn run build