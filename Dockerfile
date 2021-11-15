FROM node:16-alpine AS build

USER node
RUN mkdir /home/node/app
WORKDIR /home/node/app

COPY --chown=node:node ./package.json ./
RUN npm i
COPY --chown=node:node ./ ./

RUN npm run build

FROM nginx
COPY --from=build /home/node/app/build /usr/share/nginx/html