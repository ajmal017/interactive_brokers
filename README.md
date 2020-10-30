# InteractiveBrokers

This allow to communicate with Interactive Brokers (further IB) trough HTTP.
This gem contains 2 parts:

* Server, which require JRuby 9.2.13.0+ (might work with earlier versions, but did not tested)
* Client part extensions (It should work with Ruby 2.2+, but I'm not willing to support the legacy)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'interactive_brokers'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install interactive_brokers

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/interactive_brokers. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/interactive_brokers/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the InteractiveBrokers project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/interactive_brokers/blob/master/CODE_OF_CONDUCT.md).