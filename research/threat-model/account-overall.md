```mermaid
graph LR
Account(Account)
UserNamePasswordandMFA -->|loginvia|WorkEmailAddress[CSAEmailAddress]
PhoneNumber -->|recover|EmailAddress[WorkEmailAddress]
OtherEmailAddress -->|recover|WorkEmailAddress[WorkEmailAddress]
WorkRecoveryCode -->|recover|WorkEmailAddress[WorkEmailAddress]
Attacker -->|SimSWAP|PhoneNumber[PhoneNumber]
Attacker -->|Compromise|OtherEmailAddress[OtherEmailAddress]
Attacker  -->|Phish|OtherEmailAddress[OtherEmailAddress]
