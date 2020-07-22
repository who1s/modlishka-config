#!/bin/bash

docker build -t phishing-demo-mfa .

for i in {1..5}
do
	echo "https://phishing.fi/?id="$i
done

docker run -p80:80 -p443:443 -it --rm phishing-demo-mfa Modlishka -config /tmp/modlishka.json

