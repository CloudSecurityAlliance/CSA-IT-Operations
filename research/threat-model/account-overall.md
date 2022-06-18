```mermaid
graph LR
Account(Account)
UserNamePassword -->|loginvia|EmailAddress[EmailAddress]
UserNamePasswordandMFA -->|loginvia|EmailAddress[EmailAddress]
PhoneNumber -->|recover|EmailAddress[EmailAddress]
OtherEmailAddress -->|recover|EmailAddress[EmailAddress]
