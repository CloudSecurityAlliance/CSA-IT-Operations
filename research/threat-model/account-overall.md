```mermaid
%% Basic threat model for a CSA accounts
%% Gmail, 1Password, Microsoft365, Zoom, Slack
%% Personal iCloud and email address
graph LR

UserNamePasswordandMFA -->|loginvia|CSAGmailAddress[CSAGmailAddress]
PersonalPhoneNumber -->|recover|CSAGmailAddress[CSAGmailAddress]
PersonalEmailAddress -->|recover|CSAGmailAddress[CSAGmailAddress]
CSAGmailRecoveryCode -->|recover|CSAGmailAddress[CSAGmailAddress]

PersonaliCloud -->|Controls|Computer[Computer]
PersonaliCloud -->|Controls|MobileDevice[MobileDevice]
PersonalPhoneNumber -->|recover|PersonaliCloud[PersonaliCloud]

Attacker -->|SimSWAP|PersonalPhoneNumber[PersonalPhoneNumber]
Attacker -->|DiscoverViaEmailSignature|PersonalPhoneNumber[PersonalPhoneNumber]

Attacker -->|DiscoverViaSearch|PersonalEmailAddress[PersonalEmailAddress]

Attacker -->|Compromise|PersonalEmailAddress[PersonalEmailAddress]
Attacker -->|PhishPassword|PersonalEmailAddress[PersonalEmailAddress]

Attacker -->|Compromise|CSAGmailRecoveryCode[CSAGmailRecoveryCode]

Attacker -->|MaliciousEMailorDoc|Computer[Computer]
Attacker -->|MaliciousEMailorDoc|MobileDevice[MobileDevice]

CSAGmailAddress -->|UsedOn|Computer[Computer]
CSAGmailAddress -->|UsedOn|MobileDevice[MobileDevice]
CSAGmailAddress -->|SSOFor|Slack[Slack]
CSAGmailAddress -->|SSOFor|Zoom[Zoom]

UserNamePasswordandMFA -->|loginvia|CSAMicrosoft365[CSAMicrosoft365]
UserNamePasswordandMFA -->|loginvia|CSA1Password[CSA1Password]


