FROM alpine:3.3
MAINTAINER Tom Vincent <docker@tlvince.com>

RUN apk add --no-cache \
  # letencrypt.sh build
  git \
  # letencrypt.sh runtime
  bash curl grep openssl sed \
  # lexicon
  python py-pip

RUN pip install dns-lexicon==1.0.24
RUN git clone --branch v0.1.0 --depth 1 https://github.com/lukas2511/letsencrypt.sh.git

WORKDIR letsencrypt.sh
COPY . .

RUN chmod +x letsencrypt.sh lexicon-dns-hook.sh

ENTRYPOINT ["./letsencrypt.sh"]
CMD ["-h"]
