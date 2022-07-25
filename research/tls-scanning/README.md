# TLS/SSL Scanning project

Setup a server with IPv4. Enable HTTP server, log all scans for a week. Enable a self signed certificate with a valid hostname that points at that IP, monitor those scans for a week.

Change the self signed certificate to a letsencrypt certificate at some point (which wuill log it to the certificate transparency logs) and see if scanning volume increases or not.

## Setup

Basic Linux box with Apache.

```
apt-get update
apt-get upgrade
apt-get install apache2
```

Apache will be running with the default welcome page. You should start seeing traffic, e.g.:

```
IP-REDACTED - - [25/Jul/2022:17:46:51 +0000] "GET /.env HTTP/1.1" 404 493 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36"
IP-REDACTED - - [25/Jul/2022:17:46:52 +0000] "POST / HTTP/1.1" 200 3460 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36"
```

