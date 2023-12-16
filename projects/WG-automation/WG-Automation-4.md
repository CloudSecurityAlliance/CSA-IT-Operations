```mermaid
graph TD;

%% Automation levels:
%% Manual (do nothing)
%% Invite (invite them to join via URLs)
%% Vetted (Notify WG owners of application)
%% Automated (just add them in)

%% Ingestion points:
%% Circle - join community
%% Circle - join volunteer opportunity (requires email forwarding by WG owner)
%% Google - request drive access (requires email forwarding by Google Drive Owner, e.g. kseifried@)
%% Internal form to add people
%% External form to request signup with additional info
%% Internal scripts to directly add people
%% Manual addition of people (prone to error/forgetting!)


%% CIRCLE SIDE
%% Verified email, user initiates action
subgraph Circle
joinCircleCommunity{Join Circle Community}
joinCircleVolunteer{Join Circle Volunteer}
end

joinCircleCommunity-->|send webhook realtime|ZapEOIJoinCircleCommunity

joinCircleCommunity-->|query community members|ScriptEOIJoinCircleCommunity

ScriptEOIJoinCircleCommunity-->|adds users to google groups|GoogleGroupsDone
ScriptEOIJoinCircleCommunity-->|manual invite to slack channel|SlackInviteDone

joinCircleVolunteer-->|sends email|CommunityOwnerEmail
CommunityOwnerEmail-->|sends email|GoogleGroupIngestion
GoogleGroupIngestion-->|sends email|ZapEOIJoinCircleVolunteerOpportunity

joinCircleVolunteer-->|query volunteer opportunities members|ScriptEOIJoinCircleVolunteerOpportunity

ScriptEOIJoinCircleVolunteerOpportunity-->|adds users to google groups|GoogleGroupsDone
ScriptEOIJoinCircleVolunteerOpportunity-->|manual invite to slack channel|SlackInviteDone

ZapEOIJoinCircleCommunity-->|writes to|GoogleSheetEOIJoinCircleCommunity

ZapEOIJoinCircleVolunteerOpportunity-->|writes to|GoogleSheetEOIJoinCircleVolunteerOpportunity

subgraph GoogleSheets
GoogleSheetEOIJoinCircleCommunity[(Google Sheet EOIJoinCircleCommunity)]
GoogleSheetEOIJoinCircleVolunteerOpportunity[(Google Sheet EOIJoinCircleVolunteerOpportunity)]
GoogleSheetEOIRequestGoogleDriveAccess[(GoogleSheetEOIRequestGoogleDriveAccess)]
end

GoogleSheetEOIJoinCircleCommunity-->|new entry|ZapProcessJoinCircleCommunity
GoogleSheetEOIJoinCircleVolunteerOpportunity-->|new entry|ZapProcessJoinCircleVolunteerOpportunity

ZapProcessJoinCircleCommunity-->|writes to|GoogleSheetCircleProcessing
ZapProcessJoinCircleVolunteerOpportunity-->|writes to|GoogleSheetCircleProcessing

%% Google side
subgraph Google
requestGoogleDriveAccess{Request Google Drive Access}
end

requestGoogleDriveAccess-->|sends email|GoogleDriveOwner
GoogleDriveOwner-->|sends email|GoogleGroupDriveIngestion
GoogleGroupDriveIngestion-->|sends email|ZapEOIRequestGoogleDriveAccess

ZapEOIRequestGoogleDriveAccess-->|writes to|GoogleSheetEOIRequestGoogleDriveAccess

GoogleSheetEOIRequestGoogleDriveAccess-->|new entry|ZapProcessRequestGoogleDriveAccess


```
