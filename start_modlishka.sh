#!/bin/bash

docker build -t phishing-demo-mfa .

# Generate few example id's
for i in {1..5}
do
	echo "https://localhost/?id="$i
done

docker run -p80:80 -p443:443 -it --rm phishing-demo-mfa Modlishka -config /tmp/modlishka.json

