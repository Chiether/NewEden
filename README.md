# NewEden, The RubyGem

NewEden is ruby-interface to the EveOnline API.

## Installation

```ruby
gem 'new_eden'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install new_eden

## Usage

```ruby
require 'new_eden'

client = NewEden::Client.new |config|
  config.keyId = '******'
  config.vCode = '******'
end

# example
puts client.map.kills.inspect
```

## Contact
Twitter: @Chiether

