FROM public.ecr.aws/lts/node:16-alpine

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm i

COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]