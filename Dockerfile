FROM alpine:3.12

ARG NYX_VERSION=2.1.0

ADD https://github.com/torproject/nyx/archive/${NYX_VERSION}.tar.gz /nyx.tar.gz

RUN apk add --no-cache \
    py3-setuptools \
    python3 \
    tor \
  && tar xf nyx.tar.gz \
  && rm nyx.tar.gz \
  && mv nyx-* nyx-src \
  && cd nyx-src \
  && python3 setup.py install \
  && cd ../ \
  && rm -r nyx-src

EXPOSE 9050

USER tor

CMD ["tor"]
