```mermaid
%% Basic layout of WG automation
graph LR

%% TODO: Use public form options that require a validated email (Google Forms?)

ExpressionOfInterest -->|Web|InternalForm[InternalForm]
ExpressionOfInterest -->|Web|ExternalForm[ExternalForm]
ExpressionOfInterest -->|Circle|CircleCommunity[CircleCommunity]
ExpressionOfInterest -->|Circle|CircleSignup[CircleSignup]
ExpressionOfInterest -->|Google|GoogleDrive[GoogleDrive]

InternalForm -->|Authenticated|EmailAndGroup[EmailAndGroup]
ExternalForm -->|EmailVerified|EmailAndGroup[EmailAndGroup]
CircleCommunity -->|EmailVerified|ContactKeyAndCommunityKey[ContactKeyAndCommunityKey]
CircleSignup -->|EmailVerified|ContactKeyAndCommunityKey[ContactKeyAndCommunityKey]
GoogleDrive -->|EmailVerified|EmailAndGroup[EmailAndGroup]

EmailAndGroup-->|LookupAndWGInfo|AirtableLookupCIA[AirtableLookupCIA]
ContactKeyAndCommunityKey-->|LookupEmail|CircleAuth0EmailLookup[CircleAuth0EmailLookup]
CircleAuth0EmailLookup->|LookupAndWGInfo|AirtableLookupCIA[AirtableLookupCIA]

AirtableLookupCIA-->|WriteToWorktable|WGUserInfoTable[WGUserInfoTable]
