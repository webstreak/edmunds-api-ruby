![Tests](https://github.com/webstreak/edmunds-api-ruby/actions/workflows/ci.yml/badge.svg)
[![Code Climate](https://codeclimate.com/github/webstreak/edmunds-api-ruby/badges/gpa.svg)](https://codeclimate.com/github/webstreak/edmunds-api-ruby)
[![Coverage Status](https://coveralls.io/repos/github/webstreak/edmunds-api-ruby/badge.svg)](https://coveralls.io/github/webstreak/edmunds-api-ruby)
[![Gem Version](https://badge.fury.io/rb/edmunds_api.svg)](https://badge.fury.io/rb/edmunds_api)
[![RubyGems](http://img.shields.io/gem/dt/edmunds_api.svg?style=flat)](http://rubygems.org/gems/edmunds_api)

Edmunds Api ruby client.

> *Status*: Beta. We are preparing the project for public release soon

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'edmunds_api', '~> 0.1.8'
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
    config.timeout = 5
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
See supported options for each Api endpoint on [Edmunds website](http://developer.edmunds.com/api-documentation/overview/)  

## Supported endpoints
[Endpoints](endpoints.md)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/webstreak/edmunds-api-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
