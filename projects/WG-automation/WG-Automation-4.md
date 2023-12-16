```mermaid
graph TD;

%% CIRCLE SIDE
%% Verified email, user initiates action
subgraph Circle
joinCircleCommunity{Join Circle Community}
joinCircleVolunteer{Join Circle Volunteer}
end

joinCircleCommunity-->|send webhook realtime|ZapEOIJoinCircleCommunity

joinCircleCommunity-->|query community members|ScriptEOIJoinCircleCommunity

ScriptEOIJoinCircleCommunity-->|adds users to google groups|Google Groups done
ScriptEOIJoinCircleCommunity-->|manual invite to slack channel|Slack invite done

joinCircleVolunteer-->|sends email|CommunityOwnerEmail
CommunityOwnerEmail-->|sends email|GoogleGroupIngestion
GoogleGroupIngestion-->|sends email|ZapEOIJoinCircleVolunteerOpportunity

joinCircleVolunteer-->|query volunteer opportunities members|ScriptEOIJoinCircleVolunteerOpportunity

ScriptEOIJoinCircleVolunteerOpportunity-->|adds users to google groups|Google Groups done
ScriptEOIJoinCircleVolunteerOpportunity-->|manual invite to slack channel|Slack invite done

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
