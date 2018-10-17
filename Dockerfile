# node version
FROM node:10

# where app lives in the container
WORKDIR /usr/src/app

# move package json to working directory
COPY package*.json ./

# install dependencies in here
RUN npm install

# move everything is here into container
COPY . .

# map port 3000
EXPOSE 3000

CMD ["npm", "start"]