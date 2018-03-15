FROM alpine:3.7

ADD https://storage.googleapis.com/kubernetes-release/release/v1.6.4/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

RUN apk --update add --no-cache
    bash \
    curl \
    libintl \
    gettext && \
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
    apk del gettext

CMD ["/bin/bash"]