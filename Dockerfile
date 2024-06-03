FROM  ubuntu:22.04
ADD rootfs.tar.gz /
LABEL name="pop!_os" \
  vendor="system76" \
  org.opencontainers.image.source="ghcr.io/beautifuljunkie/pop-os-container"
COPY trusted.gpg.d/ /etc/apt/
COPY trusted.gpg /etc/apt/
COPY toetc/* /etc/
RUN echo "" > /etc/apt/sources.list
COPY *.sources /etc/apt/sources.list.d/
CMD ["bash"]
