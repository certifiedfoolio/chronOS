# Base image arguments
ARG SOURCE_IMAGE="silverblue"
ARG SOURCE_SUFFIX="-main"
ARG SOURCE_TAG="latest"

# Prepare the base image
FROM https://quay.io/repository/fedora/fedora-silverblue:42-x86_64
COPY / /ctx

# Install programs
RUN bash /ctx/system/compile/apx.sh

# Begin regular build jobs
RUN mkdir -p /var/lib/alternatives && \
    /ctx/build.sh && \
    ostree container commit