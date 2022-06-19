```mermaid
%% Basic threat model for a CSA accounts
graph LR
Account(Account)

UserNamePasswordandMFA -->|loginvia|CSAGmailAddress[CSAGmailAddress]
PersonalPhoneNumber -->|recover|CSAGmailAddress[CSAGmailAddress]
PersonalEmailAddress -->|recover|CSAGmailAddress[CSAGmailAddress]
CSAGmailRecoveryCode -->|recover|CSAGmailAddress[CSAGmailAddress]

Attacker -->|SimSWAP|PersonalPhoneNumber[PersonalPhoneNumber]
Attacker -->|Compromise|PersonalEmailAddress[PersonalEmailAddress]
Attacker  -->|Phish|PersonalEmailAddress[PersonalEmailAddress]
Attacker -->|Compromise|CSAGmailRecoveryCode[CSAGmailRecoveryCode]

CSAGmailAddress -->|UsedOn|Computer[Computer]
CSAGmailAddress -->|UsedOn|MobileDevice[MobileDevice]
CSAGmailAddress -->|SSOFor|OtherServices[OtherServices]

UserNamePasswordandMFA -->|loginvia|CSAMicrosoft365[CSAMicrosoft365]
UserNamePasswordandMFA -->|loginvia|CSA1Password[CSA1Password]

