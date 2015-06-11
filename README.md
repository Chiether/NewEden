# NewEden, The RubyGem

NewEden is ruby-interface to the EveOnline API.

## Attention
This is alpha version.
* v0.0.x -- alpha version. ( loose method )
* v0.1.x -- beta version. ( loose spec )
* v1.0.0 -- formalize.  =)

## Installation

```ruby
gem install new_eden
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install new_eden

## Usage

```ruby
require 'new_eden'

client = NewEden::Client.new do |config|
  config.keyId = '******'
  config.vCode = '******'
end

# example
puts client.map.kills.inspect

```

## Future plans
* Use local cache.
```ruby
client.map.kills #call API.
client.map.kills #not call API. (see: cachedUntil)
```

* Wait to chache-expire.
```ruby
client.map.kills #call API.
client.map.kills do
  ... # wait expire the cachedUntil and to do block.
end
```

## Return thanks to...
* CCP Games; producing EveOnline.
* New Eden Development; https://neweden-dev.com/Main_Page
* gem Twitter; https://github.com/sferik/twitter

## Contact
Twitter: @Chiether

