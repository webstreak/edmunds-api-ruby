Edmunds Api ruby client.

> *Status*: Beta. We are preparing the project for public release soon

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'edmunds-api-ruby', '~> 0.0.1'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install edmunds-api-ruby

## Usage
Add api_key in initializer:

```ruby
  Edmunds.configure do |config|
    config.api_key = 'your-api-key'
  end
```
Basic usage:
```ruby
vehicle_api = Edmunds::Api.new.vehicle
vehicle_api.makes.count
```
Pass options:
```ruby
vehicle_api = Edmunds::Api.new.vehicle
vehicle_api.make('Lexus', {state: 'new'})
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/webstreak/edmunds-api-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
