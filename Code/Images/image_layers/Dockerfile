FROM nginx:1.15.9-alpine

LABEL maintainer="Marcos F. Villa"

WORKDIR /usr/share/nginx/html

RUN mv index.html index_original.html

COPY custom_index.html custom_index.html
RUN chmod 644 custom_index.html \
  && mv custom_index.html index.html

