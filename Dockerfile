FROM debian
LABEL maintainer="nicolas.lassalle@zenika.com"

RUN apt update && \
    apt install -y inkscape git

RUN mkdir /cncf
WORKDIR /cncf
VOLUME ["/png"]

ADD convert.sh /cncf/
RUN chmod +x /cncf/convert.sh

ENTRYPOINT ["/cncf/convert.sh"]
