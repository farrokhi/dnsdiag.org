#!/bin/sh

if [ ! -d dnsdiag ]; then
  git clone https://github.com/farrokhi/dnsdiag.git
fi

cd dnsdiag
git pull
cd -
cat << HEADER > index.html
<!DOCTYPE html>
<html>
<head>
<title>DNSDiag</title>
<meta name="Keywords" content="dns, dnseval, dnstools, dnsping, dnstraceroute, dnsdiag, hijacking, python, isp" />
</head>
<xmp theme="cerulean" style="display:none;">
HEADER
cat dnsdiag/README.md >> index.html
cat << FOOTER >> index.html
</xmp>

<script src="/v/0.2/strapdown.js"></script>
</html>
FOOTER

