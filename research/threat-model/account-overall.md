```mermaid
graph LR
Account(Account)

UserNamePasswordandMFA -->|loginvia|WorkEmailAddress[WorkEmailAddress]
PhoneNumber -->|recover|WorkEmailAddress[WorkEmailAddress]
PersonalEmailAddress -->|recover|WorkEmailAddress[WorkEmailAddress]
WorkRecoveryCode -->|recover|WorkEmailAddress[WorkEmailAddress]
Attacker -->|SimSWAP|PhoneNumber[PhoneNumber]
Attacker -->|Compromise|PersonalEmailAddress[PersonalEmailAddress]
Attacker  -->|Phish|PersonalEmailAddress[PersonalEmailAddress]
Attacker -->|Compromise|WorkRecoveryCode[WorkRecoveryCode]

