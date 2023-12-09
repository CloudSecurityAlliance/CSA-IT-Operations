```mermaid
graph TD;

%% CIRCLE SIDE
subgraph Circle
joinCommunity([Circle Community])
joinVolunteer([Volunteer opportunity in Circle])
end

subgraph Log EOI
%% Log the expression of internet (EOI), nothing else so it can't fail
ZapEOIJoinVolunteer([Zap - Process Volunteer signup])
ZapEOICircleWebhook([Zap - Process Join Community webhook])

EOICircleVolunteerSignup([EOICircleVolunteerSignup])
EOICircleJoinCommunity([EOICircleJoinCommunity])

ZapEOIJoinVolunteer-->EOICircleVolunteerSignup
ZapEOICircleWebhook-->EOICircleJoinCommunity


end

ZapCheckEOIJoinVolunteer([Zap - check join volunteer is supported or not, update record])
ZapCheckEOICircleWebhook([Zap - check circle webhook is supported or not, update record])

subgraph Processing Data
ProcessingData([ProcessingData])
end

subgraph Do Work
ZapAddUserToSlack[Zap Add User To Slack]
ZapAddUserToGoogleGroups[Zap Add User To Google groups]
end

