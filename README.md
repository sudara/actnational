# Act National

Local setup just uses sqlite, no need to get fancy with mysql or postgres. 

## bundle

`bundle install`

## Setup a place to keep your secrets

You'll need a `.env` file to stick secrets in. 

Just do this for now.

`cp .sample.env .env`


## Seed data

This will create the database and some initial data:

`bin/rails db:setup`



## Start the server

`bin/rails s`