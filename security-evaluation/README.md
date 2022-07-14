# Security Evaluations

When evaluatiung the security of a service (I/P/Saas, etc.) there are several strategies/techniques that can be used. 

## Authentication

Does it support SSO? Enforced SSO? 2FA? MFA? etc.

## Backups off vendor

Backups within a vendor are nice but what if our account gets deleted? We need a separate vendor that can run the backup service and host the data.

## Certifications

Certifications aren't a guarantee, but I guarantee a service with no certifications is probably not that safe. We should ask for a STARS entry.

## Email security

If the service needs to send email as from any of our domains they need to support SPF/DKIM.

## Log files

Are log files available?
Are descriptions of the codes in log files available? user ID to email mapping?

## Sharing control

Most services involve sharing data externally to @cloudsecurityalliancd.org, how is this handled?
