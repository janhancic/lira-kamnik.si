# lira-kamnik.si

Source code for new version of http://www.lira-kamnik.si

# Instructions

Define this environment variables (in `.bash_profile` for instance):

- Amazon S3 (used for storing images)
	- LIRA_S3_ACCESS_KEY_ID
	- LIRA_S3_SECRET_ACCESS_KEY
	- LIRA_S3_BUCKET
- Google analytics
	- LIRA_GA_ID 

Then execute this commands:

    bundle install
    bundle exec rake db:migrate
    rails server
    

### License
TODO