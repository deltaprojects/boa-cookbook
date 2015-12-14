# boa

Installs and configures [boa](http://www.boa.org/) web server.

This cookbook is used as a LWRP.

Latest version of this cookbook can be found at [https://github.com/deltaprojects/boa-cookbook](https://github.com/deltaprojects/boa-cookbook).

## Supported Platforms

_More thorough platform testing needs to be made._

_Currently in an early prototype stage with minimal flexibility._

- Ubuntu 12.04

## Attributes

None at the moment.

## Recipes

### default

Does nothing, just a placeholder.

### example

Just an example of how to use this cookbook.


## Definitions/providers

### boa

Installs and sets up boa for HTTP fileserving.

Example:

```ruby
boa '/var/www' do
  port 80 # Optional, defaults to 80.
  user www-data # Optional, defaults to www-data.
  group www-data # Optional, defaults to www-data.
end
```

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Added some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
