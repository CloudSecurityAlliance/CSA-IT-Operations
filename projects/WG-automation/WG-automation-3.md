                                                          ```mermaid
graph TD;

%% CIRCLE SIDE
%% Verified email, user initiates action
subgraph Circle
joinCircleCommunity{Join Circle Community}
%% Can send webhook but appears to break?
%% POST api/v2.0/Communities/GetCommunityMembers	
%% Retrieve a list of Members of the specified Community in LastName, FirstName order.
%% https://api.connectedcommunity.org/Help/Api/POST-api-v2.0-Communities-GetCommunityMembers
%% 
%%curl X POST https://api.connectedcommunity.org/api/v2.0/Communities/GetCommunityMembers \
%%     -H 'Content-Type: application/json' \
%%     -d '{"CommunityKey":"CommunityKeyValueHere","StartRecord": 1,"EndRecord": 10000}' \
%%     -H 'HLIAMKey: redacted' \
%%     -H 'HLPassword: redacted'	

joinCircleVolunteer{Join Circle Volunteer}
%% Can send an email
%% GET api/v2.0/Volunteer/GetVolunteerList?volunteerOpportunityKey={volunteerOpportunityKey}	
%% Accessible only by Super Admin, Community Admin (if the Volunteer Opportunity is associated with a Community), and Volunteer Admins only. Returns information about all Volunteers for a specified Volunteer Opportunity.
end

joinCircleCommunity-->|sends webhook, not reliable|ZapEOIJoinCircleCommunity
joinCircleCommunity-->|manual reconciliation, delayed|ZapEOIJoinCircleCommunity

joinCircleVolunteer-->|sends email|ZapEOIJoinCircleVolunteerOpprtunity
joinCircleVolunteer-->|manual reconciliation, delayed|ZapEOIJoinCircleVolunteerOpprtunity

%% Internal Forms
%% Internal form, assumes EOI given
subgraph Internal Forms
FillOutInternalForm{Internal Form}
end



%% Public Google Forms
%% Rerquire valid google account email, so that ensures sharing will work
subgraph Public Google Forms
FillOutGoogleForm{Google Form}
end

%% Google Share Request
%% Rerquire valid google account email, so that ensures sharing will work
%% This could be automated to add tem, or reply with signup links
subgraph Google Share Request
GoogleShareRequest{Google Share Request}
end

%% Google Groups
%% Do we allow arbitrary signup? no... existing users however.
subgraph Gogle Groups
GoogleGroups{Google Groups membership}
end

```
