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

Email and community name -->|Zap|Get Circle Group CIA Info[Get Circle Group CIA Info]
ContactKey and community name -->|Zap|Get Email and Circle Group CIA Info[Get email and Circle Group CIA Info]



```
