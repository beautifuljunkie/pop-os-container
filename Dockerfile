FROM  ubuntu:22.04
ADD rootfs.tar.gz /
LABEL name="pop!_os" \
  vendor="system76" \
  org.opencontainers.image.source=https://github.com/beautifuljunkie/pop-os-container
#RUN echo "nameserver 1.1.1.1" >> /etc/resolv.conf && \
#  apt-get update && apt-get install -y aptitude
CMD ["bash"]
