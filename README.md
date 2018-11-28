
# OmniAuth Bold Cashier

Bold Cashier OAuth2 Strategy for OmniAuth 1.0.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-boldcashier'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Boldcashier` is simply a Rack middleware. Read [the OmniAuth 1.0 docs](https://github.com/intridea/omniauth) for detailed instructions.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :boldcashier, ENV['BOLDCASHIER_CLIENT_ID'], ENV['BOLDCASHIER_CLIENT_SECRET']
end
```

## Authentication Hash

Here's an example *Authentication Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  :provider => 'boldcashier',
  :uid => 'shopify/example-shop.myshopify.com',
  :credentials => {
    :token => 'afasd923kjh0934kf', # OAuth 2.0 access_token, which you store and use to authenticate API requests
  }
}
```

## License

Copyright (c) 2016 by LeadDyno, LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
