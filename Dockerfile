FROM node:16

WORKDIR /usr/app

# RUN apt -y update && apt -y upgrade
# RUN apt install -y sqlite3 libsqlite3-dev

COPY . .

RUN yarn install

# RUN yarn workspace @web-speed-hackathon-2021/client run build
RUN yarn build

EXPOSE 3000
CMD ["yarn", "start"]
