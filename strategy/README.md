# IT / Operations strategy at the Cloud Security Alliance

## Use the cloud

I know it seems obvious with the name being Cloud Security Alliance and all but we are not just a cloud first organization, 
but a cloud only organization unless there is no alternative (e.g. the printer in the office).

## Use the cloud at as high a level as possible

Don't just forklift a workload into the cloud. Move it up the stack IaaS->PaaS->SaaS where possible. Always remembering that some workloads aren't ready for it yet, and some workloads are things we need to do in house (see the Wardley maps for an explanation of this). 

Example 1: originally the CSA mailing lists and marketing email were hosted on 5 servers running in AWS (2 front end incoming, mailman in the middle, 2 outgoing). This required a lot of care and feeding, and did not give us a lot of rudimentary, let alone modern capabilities (e.g. send emails to groups by country, timezone, etc.). 

We then moved a lot of the working groups into Google (where they also act as our access permissions for working group files/team drives, invites for calendar events, etc.). We also moved to Mailchimp and later Pardot by Salesforce (where like most companies a lot of our data resides).

Example 2: A group wanted a weekly calendar agenda email (so on Monday send an email with all events in a specific calendar for the coming week). Google will do daily agendas but not weekly agendas. I asked around externally to the CSA, some people suggested writing scripts to run the API query and email the results, running it either on a VPS server or in a function as a service that supported a crontab like interface.

No. I ended up finding an automation service that supported this exact use case, and charged starting at $10/month. Set it up in about 5 minutes, tested it, worked, it's been working reliably every since.

### Why do we use the cloud at as high a level as possible?

Because a lot of the work is now automated, e.g. why setup and patch a server when you can use a PaaS? Our PaaS bill is less than half a week of a FTE hire, which we would need at a minimum patch servers if we run it ourselves. How much value can you add by patching systems, really?

## Use the official partners of the cloud service provider

Many cloud services have official partners or reccomended services, e.g. for sending email. While you can often integrate other services with a new cloud provider the integration may not work flawlessly. If you are integrating an existing cloud service with a new one and it's not working you should take a step back sooner rather than later and consider 1) is the new cloud service worth it (e.g. maybe pick a different one that integrates better) and 2) if the new cloud service is worth it should you pick a new integration and possibly par for another service). 

### Why do we use the official partners of the cloud service provider

Simple, the time spent integrating an existing service rather than buying a new one, and the possible reliability issues often cost more than simply buying a new service. 

## Constantly be looking for new cloud services and capabilities

It's not just about finding better services than the ones we currently use (e.g. the IaaS->PaaS->SaaS migration) but to find new capabilities.

Example 1: Kurt knew about Grammarly and Calendly for ages. Kurt heard a few people were interested in it, so we got business accounts, it turens out (no surprise) that most of the CSA wanted each one and found them hugely valuable (seriously, writing better english, that's always popular, and if you've ever tried to coordinate a calendar invite setup with external people you know why Calendly is so popular).

Example 2: Data Backups of Google (Email/Drive) and Microsoft365 and Salesforce, turns out there are a number of really reasonably priced services that will back it all up (e.g. in general at $5-15 per use per per service per month, again it costs less than an FTE, and setting up your own backups of these systems would be a huge amount of work).

## Cloud services that allow for collaboration are preferred

Cloud services that don't allow collaboration (e.g. data sharing/editing) are preferred. The CSA is individuals working together, so we need to ensure we pick technologies that let people work together.

## Core stack / services

Our current core stock / services, especially for AI automation are:

1. Airtable (data storage/user interfaces)
2. Zapier (automation, linking)
3. OpenAI ChatGPT (preferred over vemdor specific AI as we can use it everywhere via Zapier)
