# Specific tactics used at the CSA

## Use different cloud providers for various functions/privilege levels

We use various cloud providers for a straightforward reason: core stuff like the main website, CCSK, CCAK, STAR and so on MUST work. We also provide nice to have stuff like chapters and the Global Security Database infrastructure at widely different providers; this way if a chapter member or volunteer does something ridiculous (like post copyrighted material onto the site), there won't be any blowback that affects the main sites.

## Use different domains for different functions/privilege levels

In line with the above, cloudsecurityalliance.org is reserved for core CSA work, with most groups being obviously hosted on the group.cloudsecurityalliance.org subdomain for example. We also use csachapter.io to provide email services to various CSA chapters, again, this way, any silliness won't affect our main email domains.

## Use different accounts for integrations

For example 

1. within Google, we have an account that holds calendars (Google has since allowed calendar ownership to be changed, but this was NOT the case 10 years ago)
2. within Google, we had an account for holding documents, but that was removed once Team Drives matured
3. within Google, we have various administrative accounts for integrating with HR and automation systems

Note that the above allows:

1. Least privilege, e.g. instead of Jane Schmidt owning an important calendar, she has change access to it, and we have a better chance of noticing changes/deletions and reverting them (which has happened accidentally through a mobile phone manufacturer with a bad calendar synch system)
2. Easier backups, rather than having to back random user data and NEVER delete that user or suspend or delete their account, it's either in a non-human account, or a system (e.g. Team Drives)
3. Easier management, e.g. as people change roles or leave the CSA, their calendar entries and system automations don't break as we change their account privileges or remove the account
