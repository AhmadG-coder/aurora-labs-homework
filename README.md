# aurora-labs-homework #
Hi Aurora labs, in order to run the containers:
- go to github actions and run the only workflow there

##### jenkins credentials: ###
- username: admin
- password: password (#CyberSecurity)


### requirements: ###
for running setup script:
- sudo apt-get install jq 


### Disclaimers: ###
- couldnt figure out a way to run the script locally, cause: \
  in order to update the repository webhook url to the new jenkins site, an access token is needed
  if the access token is committed to the SCM, github deletes it the only options is to add it \
as an environment secret -> it can only be accessed via github actions


