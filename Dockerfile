FROM node:20-alpine
RUN apk --no-cache add openjdk11-jre bash curl openssl gettext nano nginx sudo && \
    npm cache clean --force 
RUN npm install -g firebase-tools@13.0.0
COPY nginx.conf /etc/nginx/
COPY serve.sh /usr/bin/
RUN chmod +x /usr/bin/serve.sh
WORKDIR /srv/firebase
ENTRYPOINT ["/usr/bin/serve.sh"]