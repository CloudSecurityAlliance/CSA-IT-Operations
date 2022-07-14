# Threat model for airtable.com

Original map as PNG (from Miro)

![Threat model diagram](https://github.com/cloudsecurityalliance/CSA-IT-Operations/blob/main/threat-model/airtable.com/airtable-threat-model-v1.png)

# What we've learned from the threat model

## We can secure our accounts by using SSO

## We can recover data as we have backups

## We can detect alterations/deletions via logs

But this would require a massive amount of time, or buying some technology and tuning it, seeing as how we have logs and backups we can retroactively handle this. One major gap: the airtable log format and codes are not well documented, also the export process is manual.

## User education

## Airtable can be made secure but this will impact functionality

Airtable is designed to support and enable adhoc work/groups/mashups with access to data across groups. In general the product has made choices that prize collaboration and adhoc data sharing over security. You can lock it down with a least privilege model but this will heavily impact the usability.
