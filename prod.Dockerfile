# application Dockerfile

FROM node

WORKDIR /usr/src/app
# ENTRYPOINT /usr/src/app

COPY package.json .
RUN yarn

EXPOSE 3000

COPY . .

CMD ["yarn", "start"]