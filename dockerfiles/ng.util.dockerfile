FROM node:16

RUN npm install -g @angular/cli@14

WORKDIR /DatingApp

ENTRYPOINT [ "ng" ]