FROM lscr.io/linuxserver/webtop:ubuntu-kde 
ENV TITLE="uwu"

RUN qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript ' \
    var allDesktops = desktops(); 
    for (i=0;i<allDesktops.length;i++) 
    {
        d = allDesktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper", "org.kde.image", "General");
        d.writeConfig("Image", "file://uwu/bg.png")
    }
'

RUN apt update && \
    apt install kde-standard -y && \
    echo "**** cleanup ****" && \
    apt-get autoclean && \
    rm -rf \
    /config/.cache \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /tmp/*

RUN apt update && \
    apt install plasma-discover -y && \
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
