FROM alpine
RUN set -x &&\
    apk --no-cache add git openssh-client bash &&\
    adduser -D user
WORKDIR /home/user
COPY ./git/install-ssh-keys.sh .
RUN set -x &&\
    sed -i 's/\x0D$//' ./install-ssh-keys.sh &&\
    chmod -v 555 ./install-ssh-keys.sh &&\
    mkdir -v ./.ssh &&\
    chmod -v 700 ./.ssh &&\
    chown -vR user:nogroup . &&\
    update-ca-certificates
USER user
CMD [ "bash" ]
