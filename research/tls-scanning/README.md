# TLS/SSL Scanning project

Setup a server with IPv4. Enable HTTP server, log all scans for a week. Enable a self signed certificate with a valid hostname that points at that IP, monitor those scans for a week.

Change the self signed certificate to a letsencrypt certificate at some point (which wuill log it to the certificate transparency logs) and see if scanning volume increases or not.

## Setup

Basic Linux box with Apache.

