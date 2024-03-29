# Problem signup domains

Some domains are sources of problematic signups:

1. Disposable email domains
2. Email to SMS gateways


## Disposable email domains:

https://github.com/disposable-email-domains/disposable-email-domains/blob/master/disposable_email_blocklist.conf

```
wget https://raw.githubusercontent.com/disposable-email-domains/disposable-email-domains/master/disposable_email_blocklist.conf
```
## Email to SMS Gateways:

https://avtech.com/articles/138/list-of-email-to-sms-addresses/?gad_source=1&gclid=Cj0KCQjwqpSwBhClARIsADlZ_TkL2PFSquXQC3hGj0QDFxZYDyRojnN_uHlVh9MaY0mZe1q5VPNcTwsaAsXbEALw_wcB

https://github.com/mfitzp/List_of_SMS_gateways/blob/master/email2sms.csv

```
wget https://raw.githubusercontent.com/mfitzp/List_of_SMS_gateways/master/email2sms.csv
csvcut -c Email-to-SMS email2sms.csv  | grep @ | cut -d"@" -f2 > email2sms-List_of_SMS_gateways.txt
csvcut -c Email-to-MMS email2sms.csv  | grep @ | cut -d"@" -f2 > email2sms-List_of_MMS_gateways.txt
```