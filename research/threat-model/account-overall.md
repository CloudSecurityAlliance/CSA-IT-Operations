```mermaid
%% Basic threat model for a CSA accounts
%% Gmail, 1Password, Microsoft365, Zoom, Slack
%% Personal iCloud and email address
graph LR

UserNamePasswordandMFA -->|loginvia|CSAGmailAccount[CSAGmailAccount]
PersonalPhoneNumber -->|recover|CSAGmailAccount[CSAGmailAccount]
PersonalEmailAddress -->|recover|CSAGmailAccount[CSAGmailAccount]
CSAGmailRecoveryCode -->|recover|CSAGmailAccount[CSAGmailAccount]

UserNamePasswordandMFA -->|loginvia|CSAMicrosoft365[CSAMicrosoft365]
PersonalPhoneNumber -->|recover|CSAMicrosoft365[CSAMicrosoft365]
PersonalEmailAddress -->|recover|CSAMicrosoft365[CSAMicrosoft365]

PersonaliCloud -->|Controls|Computer[Computer]
PersonaliCloud -->|Controls|MobileDevice[MobileDevice]
%% Does JAMF work with personal iCLoud accounts?
PersonalPhoneNumber -->|recover|PersonaliCloud[PersonaliCloud]
%% Get people to enable passkey?

Attacker -->|DiscoverViaEmailSignature|PersonalPhoneNumber[PersonalPhoneNumber]
Attacker -->|DiscoverViaSearch|PersonalPhoneNumber[PersonalPhoneNumber]
%% We definitely can't hide peoples personal phone numbers, any guidance on protecting phone accounts?
Attacker -->|SimSWAP|PersonalPhoneNumber[PersonalPhoneNumber]

Attacker -->|DiscoverViaSearch|PersonalEmailAddress[PersonalEmailAddress]
%% We definitely can't hide peoples personal email addresses, standard guidance on this.
Attacker -->|Compromise|PersonalEmailAddress[PersonalEmailAddress]
Attacker -->|PhishPassword|PersonalEmailAddress[PersonalEmailAddress]

Attacker -->|Compromise|CSAGmailRecoveryCode[CSAGmailRecoveryCode]
%% Guidance on the recovery codes? printed? 1Password?

Attacker -->|MaliciousEMailorDoc|Computer[Computer]
Attacker -->|MaliciousEMailorDoc|MobileDevice[MobileDevice]
%% Is there a good AV solution beyond Microsoft Defender?

CSAGmailAccount -->|UsedOn|Computer[Computer]
CSAGmailAccount -->|UsedOn|MobileDevice[MobileDevice]
CSAGmailAccount -->|SSOFor|Slack[Slack]
CSAGmailAccount -->|SSOFor|Zoom[Zoom]

UserNamePasswordandMFA -->|loginvia|CSAMicrosoft365[CSAMicrosoft365]
UserNamePasswordandMFA -->|loginvia|CSA1Password[CSA1Password]
