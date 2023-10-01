FROM consol/debian-xfce-vnc
ENV VNC_PW=sponge

USER 0

ADD ./assets/home $HOME/

ADD ./assets/installers $INST_SCRIPTS/

# Install Node.js LTS
RUN $INST_SCRIPTS/node20.sh

## switch back to default user
USER 1000
