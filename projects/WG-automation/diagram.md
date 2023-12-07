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
CircleWebHook --> |ContactKey and CommunityKey| WritesToEOICircleCommunityJoin[Writes to EOICircleCommunityJoin]
CircleSendsEmail --> |ContactKey and CommunityKey| WritesToEOICircleSignupForm[Writes to EOICircleSignupForm]
end


