# Airbrake Jets

[![Gem Version](https://img.shields.io/gem/v/airbrake-jets.svg)](https://rubygems.org/gems/airbrake-jets)

[Airbrake](https://airbrake.io): Application monitoring for your entire stack.

Fix errors in minutes – Airbrake tells you in real-time what's broken, where, and why.

This gem adds airbrake error reporting support to [Jets: Ruby Serverless Framework](http://rubyonjets.com/).

This gem is not officially associated and written by airbrake. This is written by [tongueroo](https://www.linkedin.com/in/tongueroo/).  Looking for maintainers or someone who would like to see if they can get this integrated to the official [airbrake-ruby](https://github.com/airbrake/airbrake-ruby) gem. At which point, this gem should be deprecated.

## Installation

Add this line to your Jets project Gemfile:

```ruby
gem 'airbrake-jets'
```

And then execute:

    bundle

Add the `AIRBRAKE_PROJECT_KEY` env variable to the `.env` file in your project.  Here's an example of what `AIRBRAKE_PROJECT_KEY` looks like.

.env:

    AIRBRAKE_PROJECT_KEY=123456
    AIRBRAKE_PROJECT_KEY=a01d0xy90cea4efs6x7359f97b615wdc

To get a `AIRBRAKE_PROJECT_KEY`, sign up for an account at [airbrake.io](https://airbrake.io) and create a project.  For more info on [Env Files](http://rubyonjets.com/docs/env-files/), refer to the Jets docs.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tongueroo/airbrake-jets.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
