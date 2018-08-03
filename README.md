# Labtime


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'labtime'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install labtime

## CLI Usage
1. Make sure you have ruby and ruby gems installed. Refer to https://www.ruby-lang.org/en/documentation/installation/.
2. Install the labtime gem using this command: "gem install labtime"
3. Run `labtime` and you should get this output:
   
            $ labtime
            Commands:
                labtime convert_decimal [decimal_labtime] [year]  # Convert a decimal labtime in a given year to real time in string format
                labtime hello [name]                              # say my name
                labtime help [COMMAND]                            # Describe available commands or one specific command

## Python Usage

```python
import subprocess
import datetime

realtime = subprocess.check_output(['labtime','convert_decimal','1000.0', '2000']).decode('utf-8')
realtime = datetime.datetime.strptime(realtime.strip(), "%Y-%m-%d %H:%M:%S %z")
realtime.isoformat()
# '2000-02-11T16:00:00-05:00'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/labtime.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
