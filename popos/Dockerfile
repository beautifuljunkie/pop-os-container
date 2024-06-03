FROM ubuntu:22.04
ADD rootfs.tar.gz /
LABEL name="pop!_os" \
  vendor="system76" 
COPY rootfs.pop-os-sources /etc/apt/sources.list.d/pop-os.sources
COPY trusted.gpg.d/*.gpg /etc/apt/trusted.gpg.d/
COPY trusted.gpg /etc/apt/
RUN echo "" > /etc/apt/sources.list
RUN echo "nameserver 1.1.1.1" >> /etc/resolv.conf && \
  apt-get update && apt-get full-upgrade -y
CMD ["bash"]
