FROM certbot/certbot

RUN apk add --update --no-cache --virtual .pax-deps attr

COPY docker-entrypoint.sh entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]
