# application Dockerfile

FROM node

WORKDIR /usr/src/app

COPY package*.json .
RUN yarn

# RUN if [ "$NODE_ENV" = "production" ]; \
# 	then COPY . .;  \
# 	else echo ''; \
# 	fi
COPY . .

EXPOSE 3000