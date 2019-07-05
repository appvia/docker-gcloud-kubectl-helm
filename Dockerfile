FROM google/cloud-sdk:alpine

# install base packages
RUN apk add -U coreutils openssl jq

# install helm and kubectl
RUN curl -LO https://git.io/get_helm.sh && \
  chmod 700 get_helm.sh && \
  ./get_helm.sh

# install kubectl
RUN gcloud components install kubectl -q

COPY scripts/docker-entrypoint.sh docker-entrypoint.sh

ENTRYPOINT ["./docker-entrypoint.sh"]

CMD ["/bin/bash"]
