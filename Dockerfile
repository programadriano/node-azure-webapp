FROM node:alpine

ENV HOME=/home/app

COPY dist/ ${HOME}

COPY package.json ${HOME}

RUN npm install  --silent --progress=false

WORKDIR ${HOME}

CMD [ "npm","start" ]