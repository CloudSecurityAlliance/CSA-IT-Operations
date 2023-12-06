```mermaid
graph TD;


internalForm([Internal form])

externalForm([External form])
%% requires email validation, e.g. Google forms "Collect email addresses Respondents will be required to sign in to Google"

joinCommunity([Circle Community])
joinVolunteer([Volunteer opportunity in Circle])

internalForm --> |CSA fills out| collectEmailAndGroup[Collects Email address and Group name]
externalForm --> |User fills out| collectEmailAndGroup[Collects Email address and Group name]

collectEmailAndGroup -->  |Writes to| EOIAirtableForm[EOIAirtableForm]
collectEmailAndGroup --> |Writes to| EOIAirtableForm[EOIAirtableForm]

%% internalForm -->|collects|Email and community name[Email and community name]
%% externalForm -->|collects|Email and community name[Email and community name]
%% joinCommunity -->|Reports|ContactKey and CommunityKey[ContactKey and CommunityKey]
%% joinVolunteer -->|Reports|ContactKey and CommunityKey[ContactKey and CommunityKey]

```
