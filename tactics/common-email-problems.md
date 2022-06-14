# Common Email Problems

## Email not received

1. Check spam folder
2. Check for filtering rules
3. Check logs to see if they got it or not

## Spaminess - content

Content: use litmus.com to check for spaminess (words, content, etc.)

## Spaminess - sender

We use a variety of email providers that have shared pools which can result in our email being blocked due to someone 
else sending spam and getting the provider IP blocked. In this case contact the provider anmd have them fix it.

To check an IP and see if it is on spam lists use https://mxtoolbox.com/blacklists.aspx


### Google

https://admin.google.com/ac/emaillogsearch

Search for the sender/recipient to see if it's being blocked

### Mailgun

https://login.mailgun.com/login/

Check Sending - Logs - Filter "failed-permanent"

### Sendgrid

https://app.sendgrid.com/email_activity

Search for "To email address" or "Show All Activity"

### Pardot

https://cloudsecurityalliance.my.salesforce.com/home/home.jsp





