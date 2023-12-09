```mermaid
graph TD;

%% CIRCLE SIDE
subgraph Circle
joinCommunity([Join Circle Community])
joinVolunteer([Join Volunteer opportunity in Circle])
end

joinCommunity -->|Sends webhook|ZapEOICircleWebhook
joinVolunteer -->|Sends email|ZapEOIJoinVolunteer

subgraph Log EOI
%% Log the expression of internet (EOI), nothing else so it can't fail
ZapEOICircleWebhook([Zap - Process Join Community webhook])
ZapEOIJoinVolunteer([Zap - Process Volunteer signup])

EOICircleJoinCommunity([EOICircleJoinCommunity])
EOICircleVolunteerSignup([EOICircleVolunteerSignup])

ZapEOICircleWebhook-->EOICircleJoinCommunity
ZapEOIJoinVolunteer-->EOICircleVolunteerSignup

end

subgraph Parse EOI
ZapCheckEOIJoinVolunteer([Zap - check join volunteer is supported or not, update record])
ZapCheckEOICircleWebhook([Zap - check circle webhook is supported or not, update record])
end

subgraph Processing Data
ProcessingData([ProcessingData])
end

subgraph Do Work
ZapAddUserToSlack[Zap Add User To Slack]
ZapAddUserToGoogleGroups[Zap Add User To Google groups]
end

