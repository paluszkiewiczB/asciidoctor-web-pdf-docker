FROM node:18.7.0-bullseye-slim

# FIXME Puppeteer installs own Chromium, but base image does not have all the required dynamically linked libs to run it.
# FIXME Installing whole Chromium is stupid, but works
RUN apt-get update && apt-get install -y chromium \
    && rm -rf /var/lib/apt/lists

USER node

RUN npm i @asciidoctor/core asciidoctor-pdf --save-dev

COPY "start.sh" "start.sh"
ENTRYPOINT ["/bin/bash", "start.sh"]
CMD ["pdf"]

