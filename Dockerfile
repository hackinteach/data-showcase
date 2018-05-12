FROM node:slim
RUN npm install -g serve vue
EXPOSE 5001
ENV NODE_ENV production
WORKDIR /webapp
ADD package.json .
RUN yarn install --network-timeout=100000
ADD . .
RUN if [ -d "dist/" ]; then rm -rf dist; fi
RUN yarn build
CMD serve -p 5001 -s dist
