FROM mozbuilddeps

USER root
RUN apt-get update && apt-get install -y xvfb novnc x11vnc ratpoison x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable x11-apps
USER user
WORKDIR /home/user
RUN mkdir -p /home/user/vnc && x11vnc -storepasswd foobar /home/user/vnc/passwd
COPY startup /home/user/vnc/startup
