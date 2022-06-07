# Handling vulnerabilities and 0 days

The real differences in practice between a vulnerability (known to the vendor) and a 0day are:

1. Exploitation of 0days is perceived as riskier (attackers often rely on older, known, vulnerabilities, but if something is in the press your executive suite is more like to ask pointed questions about it)
2. 0days are less likely to have good solid information, especially from the vendor affected, so finding trustworthy sources can be a challenge
3. 0days are less likely to have a software patch or workaround to fix them

## General vulnerability and 0 day handling strategy

1. if you see something, say something, we'd rather find out multiple times from multiple sources than not find out, email security@cloudsecurityalliance.org if you have a security concern, in a CSA hosted system, in a system we use, in a piece of client software, whatever, we love email
2. the CSA IT Operations security team will do an investigation (are we affected? how bad is it? can we fix it? do we need to bring in external parties? etc.), escalate as needed (e.g. to the affected vendor, or internally), and communicate back to you (and possibly everyone if it's a widespread issue)
3. the CSA IT Operations security team will contact the necessary parties in order to get this dealt with (e.g. Dev, end users of client systems, etc.)
4. if we learn anything useful we'll document it, and ideally update the Global Security Database entry (if one exists for the issue) as well, so that we have a solid public record we can also share if needed

## Notifying the Cloud Security Alliance of an issue

Email security@cloudsecurityalliance.org and optionally poke IT Operations and or support people directly on Slack if it is time sensitive so they can start poking people.

## Finding a trustworthy source of information

For well known vulnerabilities this is easy, consult the Global Security Database entry and/or original vendor. If the vulnerability is not well known or is a 0day than it's time to check the usual sources (well known people on Twitter mostly).

## Determining if we are affected

The CSA IT Operations team maintains an internal spreadsheet of IT inventory which includes our vendors (approximately 100 in total), please check there to see if we are directly affected, we may also be indirectly affected, e.g. our vendor uses an affected vendor. Also when it comes to client side systems we generally have to worry about:

* Mac OS
* iOS on iPhone and iPad
* Windows 11
* Android OS on phones and tablets

## Contacting affected parties within the CSA

Depending on who it is your most likely course of contact will be email or slack. In the event of a widespread issue on the client side (e.g. a new Mac OS issue) it may be appropriate to email the staff list.

## Contacting affected parties outside the CSA

Use email. Ideally also include other people in the CC so it's not relying on a single person.
