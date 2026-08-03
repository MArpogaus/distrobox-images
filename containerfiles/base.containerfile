FROM scratch AS ctx
COPY . /

ARG BASE_IMAGE
FROM ${BASE_IMAGE}

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command"

ARG LAYERS
RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,dst=/var/cache \
    --mount=type=cache,dst=/var/log \
    --mount=type=tmpfs,dst=/tmp \
    sh -c 'set -ex; /ctx/prepare-build.sh; for l in $(echo ${LAYERS} | tr "," " "); do /ctx/${l}-build.sh; done; /ctx/cleanup-build.sh'
