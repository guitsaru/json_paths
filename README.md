# JsonPaths

Generate a list of all [JSON paths](http://goessner.net/articles/JsonPath/) in a JSON document.

## Installation

Add this line to your application's Gemfile:

    gem 'json_paths'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install json_paths

## Usage

```ruby
json = '{"a": {"b": [1]}, "c": 2}'

JsonPaths.new(json).map { |path| path }
#=> ['$.a.b[0]', '$.a.c']
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/json_paths/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
