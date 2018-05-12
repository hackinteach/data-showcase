FROM node:slim
RUN npm install -g serve vue
EXPOSE 5000
ENV NODE_ENV production
WORKDIR /webapp
ADD package.json .
RUN yarn install --network-timeout=100000
ADD . .
RUN if [ -d "dist/" ]; then rm -rf dist; fi
RUN yarn build
CMD serve -s dist