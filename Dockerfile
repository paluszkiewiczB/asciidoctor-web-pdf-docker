FROM node:17.8.0-bullseye-slim

# FIXME Puppeteer installs own Chromium, but base image does not have all the required dynamically linked libs to run it.
# FIXME Installing whole Chromium is stupid, but works
RUN apt-get update && apt-get install -y chromium \
    && npm i -g @asciidoctor/core asciidoctor-pdf

ENTRYPOINT ["asciidoctor-web-pdf"]
CMD ["--version"]
