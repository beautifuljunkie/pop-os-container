FROM  ubuntu:22.04
ADD rootfs.tar.gz /
LABEL name="pop!_os" \
  vendor="system76" \
  org.opencontainers.image.source="ghcr.io/beautifuljunkie/pop-os-container"

CMD ["bash"]
