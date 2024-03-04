ARG VERSION
FROM quay.io/fedora/fedora:${VERSION}
ARG ENVIRONMENT

RUN \
  dnf install -y bootc; \
  if [[ -n "${ENVIRONMENT}" ]]; then dnf group install -y ${ENVIRONMENT}; fi; \
  dnf clean all