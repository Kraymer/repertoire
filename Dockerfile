FROM kraymer/musescore:3.6

RUN apt-get install -y imagemagick

RUN mkdir /tmp/simplerep

COPY .github/convert.sh /tmp/simplerep/convert.sh
COPY .github/spacer_260.png /tmp/simplerep/spacer_260.png

# Executes `entrypoint.sh` when the Docker container starts up
ENTRYPOINT ["/tmp/simplerep/convert.sh"]
