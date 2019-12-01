# application Dockerfile

FROM node

WORKDIR /usr/src/app

COPY package*.json .
RUN yarn

# RUN if [ "$NODE_ENV" = "development" ]; \
# 	then npm install;  \
# 	else npm install --only=production; \
# 	fi

EXPOSE 3000