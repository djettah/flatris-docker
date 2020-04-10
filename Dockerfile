FROM node:10
EXPOSE 3000

COPY . /app

WORKDIR /app

RUN yarn install
# RUN yarn test
RUN yarn build

ENTRYPOINT ["yarn", "start"]