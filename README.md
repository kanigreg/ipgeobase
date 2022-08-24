![example workflow](https://github.com/kanigreg/ipgeobase/actions/workflows/main.yml/badge.svg)

# Ipgeobase
Get information about IP addresses.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ipgeobase', :git => "git://github.com/kanigreg/ipgeobase.git"
```

And then execute:

    $ bundle install

## Usage

```ruby
require 'ipgeobase'

ip_meta = Ipgeobase.lookup('8.8.8.8')
ip_meta.city # Ashburn
ip_meta.country # United States
ip_meta.countryCode # US
ip_meta.lat # 39.03
ip_meta.lon # -77.5
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kanigreg/ipgeobase/issues.
