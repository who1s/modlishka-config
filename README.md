# modlishka-config

My docker + g-suite configuration for [Modlishka](https://github.com/drk1wi/Modlishka).

## Domain configuration

You need to use your own domain with wildcard A record to desired IP address (e.q. 127.0.0.1), example:
```
*.phishing.fi    IN A    127.0.0.1
```

## Certificate from Let's Encrypt (OPTIONAL)

After that you can request certificate from Let's Encrypt:
```
# apt-get install certbot
# certbot certonly --manual --preferred-challenges dns --server https://acme-v02.api.letsencrypt.org/directory --manual-public-ip-logging-ok -d '*.phishing.fi' -d phishing.fi
# cp -r /etc/letsencrypt/archive/phishing.fi/ .

```

And change it to right format:
```
# openssl rsa -in privkey1.pem -out priv.key
# sed -i ':a;N;$!ba;s/\n/\\n/g' priv.key
# sed -i ':a;N;$!ba;s/\n/\\n/g' fullchain1.pem
```

Insert the fullchain1.pem to "cert" variable in configuration and priv.key to "certKey".

## Launch it

After that you are ready to go if you have docker installed:
```
# ./start_modlishka.sh
```

More detailed description on my blog: [https://blog.dfir.fi/](https://blog.dfir.fi/).
