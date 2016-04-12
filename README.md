# letslexicon

> Automated Let's Encrypt certificate generation and renewal

Uses [letsencrypt.sh][] and [lexicon][] to automate Let's Encrypt SSL
certificate generation and renewal.

[lexicon]: https://github.com/AnalogJ/lexicon
[letsencrypt.sh]: https://github.com/lukas2511/letsencrypt.sh

## Usage

```shell
echo "my.domain.example.com" >> domains.txt
```

```shell
docker build --rm --tag letslexicon:latest .
```

```shell
docker run \
  -e PROVIDER=cloudflare \
  -e LEXICON_CLOUDFLARE_USERNAME=[cloudflare@example.com] \
  -e LEXICON_CLOUDFLARE_TOKEN=[token] \
  -v `pwd`/data/key:/letsencrypt.sh/key \
  -v `pwd`/data/certs:/letsencrypt.sh/certs \
  -v `pwd`/data/archive:/letsencrypt.sh/archive \
  letslexicon -c
```

## Author

© 2016 Tom Vincent <https://tlvince.com/contact>

## License

Released under the [MIT License](http://tlvince.mit-license.org).
