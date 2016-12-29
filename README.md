Edmunds Api ruby client.

> *Status*: Beta. We are preparing the project for public release soon

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'edmunds_api', '~> 0.1.2'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install edmunds_api

## Usage
Add api_key in initializer:

```ruby
  Edmunds.configure do |config|
    config.api_key = 'your-api-key'
  end
```
Basic usage:
```ruby
vehicles_api = Edmunds::Api.new.vehicles
vehicles_api.makes.count
```
You can also pass options to an Api endpoint:
```ruby
vehicles_api = Edmunds::Api.new.vehicles
vehicles_api.make('Lexus', {state: 'new'})
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/webstreak/edmunds-api-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
