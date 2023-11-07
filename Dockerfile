FROM bitnami/git AS base
WORKDIR /web-app
RUN git clone -b devops-mariobros https://github.com/roxsross/devops-static-web.git . && rm -rf .git

FROM httpd:alpine3.18
COPY --from=base /web-app/ /usr/local/apache2/htdocs/
