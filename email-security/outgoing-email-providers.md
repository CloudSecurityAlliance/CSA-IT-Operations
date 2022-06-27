# Outgoing email provider security

This applies to all email being sent out as from @cloudsecurityalliance.org or a subdomain, or any of our other major domains.

# DMARC -> SPF -> DKIM -> BIMI

One path to outgoing email security is to adopt BIMI which basically requires you to get SPF/DKIM/DMARC all setup securely.

The goals should be:

1. You have an SPF record for each domain/subdomain and a policy of "-all" 
2. You have DKIM signing of all outgoing email for each domain/subdomain and a policy of requiring DKIM signing on the primary domain, and ideally on each subdomain
3. You have a DMARC policy of 100% coverage, a policy of reject, and strict SPF/DKIM on your primary domain, and ideally on each subdomain
4. Optionally: you deploy BIMI once the above is done

## DMARC Visibility

Step 1 is to enable DMARC for every domain and sub domain, this will give you visibility into what is sending email as from your domain/subdomains.

Step 2 is to deploying SPF records, and configuring DKIM signing wherever possible

Step 3 is to repeat until everything is covered with an SPF record and has DKIM signing enabled

## SPF

Everything MUST be covered with SPF and a policy of -all. This can be a problem if you have lots of email providers because SPF only allows 10 DNS lookups per domain checked.

The solution here is to either:

1. breakup email into subdomains and setup SPF for the subdomains
2. manually collect up SPF data and serve your own records. 

### Manual SPF record generation

For example the cloudsecurityalliance.org primary domain has an SPF record of:

```
v=spf1 
include:_spf.google.com 
exists:%{i}._spf.mta.salesforce.com 
include:_spf.mailgun.org 
include:_spf.eu.mailgun.org 
include:_spfsendgrid.cloudsecurityalliance.org 
-all" 
```

For example rather than specify ```include:mailgun.org``` we manually put the records it in turn refers to directly into our dns record: ```include:_spf.mailgun.org include:_spf.eu.mailgun.org```

The risk here is if mailgun changes their setup then our outgoing email via mailgun could break. Changing these top level directories is unlikely.

There are also services that can do this in an automated fashion preventing any breakage if a provider changes their records.

To check your SPF records for correctness you can use https://www.dmarcanalyzer.com/spf/checker/

## DKIM

Each service will have a different DKIM setup. Google "DKIM Setup servicename" and hope they have it clearly documented. If a service doesn't support DKIM it will need to be moved to a subdomain so that risk of spoofed email is minimized.

For example the CSA uses: ```"v=DMARC1; p=reject; sp=reject; rua=mailto:9zr29qlm94@rua.powerdmarc.com; ruf=mailto:9zr29qlm94@ruf.powerdmarc.com; pct=100; fo=1; aspf=s; adkim=s;"```

Which specifies a policy of reject, a policy on subdomains of reject, a percent of coverage of 100%, reporting (fo) if either SPF or DKIM fail, and strict alignment mode for both SPF and DKIM.

## DMARC

Ideally you want 100% coverage, reporting to an automated system, and ultimately a policy of reject. aspf and adkim should be strict.

## BIMI

Once you have completely locked down SPF/DKIM/DMARC you can get a BIMI logo. Use https://bimigroup.org/bimi-generator/ to check to see how ready a domain is for BIMI deployment.

# Onboarding new email services

The main challenge with onboparding new email services is dealing with the SPF 10 record lookup limit. Using a subdomain can help address this issue.
