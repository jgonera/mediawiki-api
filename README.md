# Mediawiki::Api

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'mediawiki-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mediawiki-api

## Usage

```ruby
require 'mediawiki-api'

client = MediawikiApi::Client.new('http://127.0.0.1/w/api.php')
client.log_in('username', 'pass')
client.create_page('Test api', "lalala '''test'''")
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
