Edmunds Api ruby client.

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
    config.api_key = 'your api key'
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


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/webstreak/edmunds-api-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
