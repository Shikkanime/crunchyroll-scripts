FROM alpine:3
RUN echo @testing https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk --no-cache add jadx@testing bash grep base64
COPY . /app
WORKDIR /app
RUN chmod +x /app/apk-credentials-extract.sh
ENTRYPOINT ["/app/apk-credentials-extract.sh", "/app/crunchyroll.apkm"]