```mermaid
graph TD;

internalForm([CSA User fills out Internal form])

externalForm([External User fills out Internal form])
%% requires email validation, e.g. Google forms "Collect email addresses Respondents will be required to sign in to Google"

joinCommunity([User clicks join Circle Community])
joinVolunteer([User clicks on volunteer opportunity in Circle])


internalForm -->|collects|Email and community name[Email and community name]
externalForm -->|collects|Email and community name[Email and community name]
joinCommunity -->|Reports|ContactKey and CommunityKey[ContactKey and CommunityKey]
joinVolunteer -->|Reports|ContactKey and community name[ContactKey and community name]



%% TODO: Use public form options that require a validated email (Google Forms?)

ExpressionOfInterest -->|Web|InternalForm[InternalForm];
ExpressionOfInterest -->|Web|ExternalForm[ExternalForm];
ExpressionOfInterest -->|Circle|CircleCommunity[CircleCommunity];
ExpressionOfInterest -->|Circle|CircleSignup[CircleSignup];
ExpressionOfInterest -->|Google|GoogleDrive[GoogleDrive];

InternalForm -->|Authenticated|EmailAndGroup[EmailAndGroup];
ExternalForm -->|EmailVerified|EmailAndGroup[EmailAndGroup];
CircleCommunity -->|EmailVerified|ContactKeyAndCommunityKey[ContactKeyAndCommunityKey];
CircleSignup -->|EmailVerified|ContactKeyAndCommunityName[ContactKeyAndCommunityName];
GoogleDrive -->|EmailVerified|EmailAndGroup[EmailAndGroup];

EmailAndGroup -->|LookupWGInfo|AirtableLookupCIA[AirtableLookupCIA];

ContactKeyAndCommunityKey -->|LookupEmail|CircleAuth0EmailLookup[CircleAuth0EmailLookup];
CircleAuth0EmailLookup -->|LookupAndWGInfo|AirtableLookupCIA[AirtableLookupCIA];

ContactKeyAndCommunityName -->|LookupAndWGInfo|AirtableLookupCIA[AirtableLookupCIA];

AirtableLookupCIA -->|WriteToWorktable|WGUserInfoTable[WGUserInfoTable];

```
