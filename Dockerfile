FROM node:20-alpine

RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    git \
    graphicsmagick \
    ghostscript

RUN npm install -g n8n@1.123.0

ENV N8N_PORT=5678
ENV N8N_LISTEN_ADDRESS=0.0.0.0
ENV N8N_PROTOCOL=https
ENV N8N_SECURE_COOKIE=false
ENV N8N_PROXY_HOPS=1
ENV N8N_PUSH_BACKEND=sse
ENV GENERIC_TIMEZONE=America/Sao_Paulo
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV DB_SQLITE_POOL_SIZE=5
ENV N8N_RUNNERS_ENABLED=true

EXPOSE 5678

CMD ["n8n", "start"]
