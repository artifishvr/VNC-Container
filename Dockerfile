FROM lscr.io/linuxserver/webtop:ubuntu-kde 
ENV TITLE="uwu"

RUN apt update

# add local files
COPY /root /

RUN kwriteconfig5 --file "$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc" --group 'Containments' --group '1' --group 'Wallpaper' --group 'org.kde.image' --group 'General' --key 'Image' "/uwu/bg.png"

RUN apt install gdebi-core -y
RUN gdebi /uwu/tbh-1.6.0.deb -y

# ports and volumes
EXPOSE 3000
VOLUME /config