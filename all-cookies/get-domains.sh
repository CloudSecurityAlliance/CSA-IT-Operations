#!/bin/bash

# This assumes it is running from ~/GitHub/ and you have a copy of CSA-Backups-CloudFlare (which is restricted to within CSA IT).

jq -r '.result[].name' ../../CSA-Backups-CloudFlare/CSA-Backups-Cloudflare-Data/*.dns_records.json | sort | uniq > csa-domains.txt

