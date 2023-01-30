FROM node:18

RUN npm install -g @angular/cli

WORKDIR /DatingApp

ENTRYPOINT [ "ng" ]