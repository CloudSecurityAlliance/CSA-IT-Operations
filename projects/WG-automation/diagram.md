```mermaid
graph TD;

%% CIRCLE SIDE
subgraph Circle
joinCommunity([Circle Community])
joinVolunteer([Volunteer opportunity in Circle])

joinCommunity --> |User clicks join| CircleWebHook[Circle sends a webhook to Zapier]
joinVolunteer --> |User clicks accept| CircleSendsEmail[Circle sends an email to Zapier]
end

subgraph Zapier Log EOI
%% Log the expression of internet (EOI), nothing else so it can't fail
CircleWebHook --> |ContactKey and CommunityKey| WritesToEOICircle[Writes to EOICircle]
CircleSendsEmail --> |ContactKey and CommunityKey| WritesToEOICircle[Writes to EOICircle]
end


WritesToEOICircle --> |new item| LookgupWGInfoEmail[Look up WG Info and Email address]
 

subgraph Zapier Process Data
%% This needs to lookup the WG Info first and only proceed if automation = yes
%% This looks up the email in circle and if not found then in Auth0
%% This only proceeds if we find an email address
LookgupWGInfoEmail --> |Check automation level, data|WriteToProcessingData[Write to Processing Data]
end



CheckForWorkToDo --> |Write email, google groups| WriteToWorkGoogleGroups[Write to WorkGoogleGroups]
CheckForWorkToDo --> |Write email, slack channel| WriteToWorkSlack[Write to WorkSlack]



 
