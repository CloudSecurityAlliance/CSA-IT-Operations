# Automation components at the CSA

## Tags

data_storage
data_processing
linking

## Core components

* Airtable - data_storage, data_processing, linking
* Google Sheets - data_storage, data_processing
* Mailgun - sending email
* Sendgrid - sending email
* Zapier - data_processing, linking
* xFanatical - data_processing, linking

## Other services

* Circle
* Google Drive
* Google Calendar
* Google Groups
* Microsoft365
* Salesforce
* ZenDesk

## Common connections

* some data or event triggers an outbound email
* clicking a link triggers some activity like adding a user to a list
* filling out a form populates a data storage, the new record triggers an action

## Examples of automation

* Someone wants a weekly email (Monday morning) of their upcoming calendar events, Google calendar only does daily agendas. Solution: use xFanatical, give the system automation access to the calendar in question, and setup an xFanatical job to send a weekly agenda at 3am on Mondays.
* We have a Google form that populates a spreadsheet, we want an email sent to them to invite them to the working group they're interested in. Solution: use Zapier to monitor the spreadsheet for new entries, and send an email when a new entry is created.

