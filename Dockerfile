FROM consol/debian-xfce-vnc
ENV VNC_PW=sponge

USER 0

ADD ./assets/home $HOME/

ADD ./assets/installers $INST_SCRIPTS/

RUN chmod +x $INST_SCRIPTS/*.sh
# Install Node.js LTS
RUN $INST_SCRIPTS/node20.sh

# Install Games
RUN $INST_SCRIPTS/games.sh

## switch back to default user
USER 1000
