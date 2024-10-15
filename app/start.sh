#!/bin/sh

apk add --no-cache wget socat
wget "https://abda.nl/lumen/hexrays.crt" -O hexrays.crt
socat -s -dd tcp4-listen:1234,fork,reuseaddr openssl:lumen.abda.nl:1235,cafile=hexrays.crt
