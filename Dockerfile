FROM node:12.22.1

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app
COPY package*.json ./


RUN apt-get update 
RUN npm install
ARG value
ENV ENVIRONMENT="https://reqres.in"
ENV TEST=""
# ENTRYPOINT ["/bin/bash"] 

# CMD ["npm","run","test"]
CMD yarn test ${TEST}
# docker run -p 3306:3306 --name mysqlSepa15 -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=sepa_desarrollo mysql
# docker run -it -v $PWD:/e2e -w /e2e cypress/included:6.2.1 --browser chrome
