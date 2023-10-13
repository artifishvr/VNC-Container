FROM lscr.io/linuxserver/webtop:ubuntu-kde 
ENV TITLE="uwu"

RUN kwriteconfig5 --file "$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc" --group 'Containments' --group '1' --group 'Wallpaper' --group 'org.kde.image' --group 'General' --key 'Image' "/uwu/bg.png"

RUN apt update && \
    echo "**** install stuffs ****" && \
    apt install gdebi-core -y && \
    echo "**** cleanup ****" && \
    apt-get autoclean && \
    rm -rf \
    /config/.cache \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /tmp/*

RUN rm -rf /usr/local/etc/kasmvnc/kasmvnc.yaml

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000
VOLUME /config