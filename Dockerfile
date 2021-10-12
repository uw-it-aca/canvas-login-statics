FROM gcr.io/uwit-mci-axdd/nginx-container:1.0.3 as app-container

USER root

COPY docker/locations.conf /etc/nginx/includes/locations.conf

USER acait

COPY --chown=acait:acait index.html package.json vite.config.js /app/
COPY --chown=acait:acait wayf /app/wayf
COPY --chown=acait:acait unauthorized-user /app/unauthorized-user
COPY --chown=acait:acait unknown-user /app/unknown-user
COPY --chown=acait:acait public /app/public

RUN . /app/bin/activate &&\
    npm install vite &&\
    npm run build
