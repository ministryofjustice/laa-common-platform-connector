# laa-common-platform-connector

This application is a spike to understand how we might transform data from the HMCTS Common-Platform, and present it correctly to LAA sustems.

This README would normally document whatever steps are necessary to get the application up and running.

### Ruby version
2.5.1

### Rails version
5.2.2

### System dependencies
- postgres 10.5
- testing dependency on Sinatra.

### Database creation/ initialization
```ruby
rails db:create
rails db:migrate
```

### How to run the test suite

Note: the test suite spins up a sinatra fake common-platform API to run against. This does not need to be separately started in test.
```
# after migrating the DB, run:
rspec
```

### Services (job queues, cache servers, search engines, etc.)

Application relies on a fake common platform API in Dev mode.

This is a sinatra app that, can be found in:

```
app/specs/support/fake_common_platform.rb
```

To run this fake:

```
$ cd app/specs/support/

# to run app on port 4567
rackup -p 4567
```

If you then hit `localhost:4567/hearing/1` in the browser you will see a raw JSON representing the possible output from the common-platform API.

You can then run the rails app, from the project base run:

```
rails s
```

Hit `localhost:3000/refreshdata` in your browser to load data from the fake common platform into the Connector.

Then hit `localhost:3000/hearing/1` to return a preliminary transformed JSON response from the Connector.


### Deployment instructions

As this is a spike there are no deployment instructions.

