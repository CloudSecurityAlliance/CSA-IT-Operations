# Circle API

API 2.0 - https://api.connectedcommunity.org/v2.0/Help

# .profile

Setup the HLIAMKEY and HLPASSWORD as environmental variables because it's 2023.

```
export HLIAMKEY=zzzzzzzzzzzzzzzzzzzzzz
export HLPASSWORD=xxxxxxxxxxxxxxxxxx
```

## GetViewableCommunities

Get a list of viewable communities, must run as Super Admin to see everything.

GET api/v2.0/Communities/GetViewableCommunities?includeStatistics={includeStatistics}	
Returns a list of Communities the Current User can see.
[https://api.connectedcommunity.org/Help/Api/GET-api-v2.0-Communities-GetViewableCommunities_includeStatistics](https://api.connectedcommunity.org/Help/Api/GET-api-v2.0-Communities-GetViewableCommunities_includeStatistics)

```
curl https://api.connectedcommunity.org/api/v2.0/Communities/GetViewableCommunities \
     -H 'HLIAMKey: '"$HLIAMKEY"'' \
     -H 'HLPassword: '"$HLPASSWORD"''
```

## GetCommunityMembers from a specific community

POST api/v2.0/Communities/GetCommunityMembers	
Retrieve a list of Members of the specified Community in LastName, FirstName order.

[https://api.connectedcommunity.org/Help/Api/POST-api-v2.0-Communities-GetCommunityMembers](https://api.connectedcommunity.org/Help/Api/POST-api-v2.0-Communities-GetCommunityMembers)

```
curl -X POST https://api.connectedcommunity.org/api/v2.0/Communities/GetCommunityMembers \
     -H 'Content-Type: application/json' \
     -d '{"CommunityKey":"CommunityKeyValueHere","StartRecord": 1,"EndRecord": 10000}' \
     -H 'HLIAMKey: '"$HLIAMKEY"'' \
     -H 'HLPassword: '"$HLPASSWORD"''
```

## GetVolunteerOpportunityList

Get a list of all volunteer opportunities

GET api/v2.0/Volunteer/GetVolunteerOpportunityList	
Returns a list of active Volunteer Opportunities in the system.

[https://api.connectedcommunity.org/Help/Api/GET-api-v2.0-Volunteer-GetVolunteerOpportunityList](https://api.connectedcommunity.org/Help/Api/GET-api-v2.0-Volunteer-GetVolunteerOpportunityList)

```
curl https://api.connectedcommunity.org/api/v2.0/Volunteer/GetVolunteerOpportunityList \
     -H 'HLIAMKey: '"$HLIAMKEY"'' \
     -H 'HLPassword: '"$HLPASSWORD"''
```

## GetVolunteerList - volunteerOpportunityKey

GET api/v2.0/Volunteer/GetVolunteerList?volunteerOpportunityKey={volunteerOpportunityKey}	
Accessible only by Super Admin, Community Admin (if the Volunteer Opportunity is associated with a Community), and Volunteer Admins only. Returns information about all Volunteers for a specified Volunteer Opportunity.

[https://api.connectedcommunity.org/Help/Api/GET-api-v2.0-Volunteer-GetVolunteerList_volunteerOpportunityKey](https://api.connectedcommunity.org/Help/Api/GET-api-v2.0-Volunteer-GetVolunteerList_volunteerOpportunityKey)https://api.connectedcommunity.org/Help/Api/GET-api-v2.0-Volunteer-GetVolunteerList_volunteerOpportunityKey

```
curl https://api.connectedcommunity.org/api/v2.0/Volunteer/GetVolunteerList?volunteerOpportunityKey={volunteerOpportunityKey} \
     -H 'HLIAMKey: '"$HLIAMKEY"'' \
     -H 'HLPassword: '"$HLPASSWORD"''	
```

