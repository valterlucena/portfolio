# base image
FROM node:13.8.0-stretch

# set workind directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN yarn install
RUN yarn global add @vue/cli@3.7.0

# start app
CMD ["yarn", "run", "serve"]

