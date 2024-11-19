FROM 172.16.110.61:5000/devops/devel-node:12 as vendor

WORKDIR /app

COPY package.json ./
RUN set -ex \
    && npm install --loglevel verbose

COPY . /app/
RUN set -ex \
    && npm run build

WORKDIR /app/dist

EXPOSE 5000

CMD ["npm","run","start:dev"]