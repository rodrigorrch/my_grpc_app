# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
3.3.0

* System dependencies
ruby-grpc-tools lib

* Configuration
```bundle install```

* Run this command to test in your rails console
```
# Create a gRPC client
stub = Greeter::Stub.new('localhost:50057', :this_channel_is_insecure)

# Make a request to the server
request = HelloRequest.new(name: 'Rodrigo')
response = stub.say_hello(request)
puts "Server replied: #{response.message}"
```
