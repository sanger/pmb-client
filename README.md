# PMB

pmb-client is a tiny gem that acts as a client to the [Print My Barcode](https://github.com/sanger/print_my_barcode) web service. It is dependent on the [json_api_client gem](https://github.com/chingor13/json_api_client).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pmb-client', '0.1.0', :github => 'jbeast/pmb-client'
```

And then execute:

    $ bundle

## Usage

```ruby
require 'pmb'

# set the api base url
PMB::Base.site = 'http://pmb.server:1234/api/v1'
```

The client implements the following resources:
  - PMB::LabelType
  - PMB::LabelTemplate
  - PMB::Label
  - PMB::Bitmap
  - PMB::Barcode
  - PMB::PrintJob
  - PMB::Printer

For usage instructions see the [json_api_client README](https://github.com/chingor13/json_api_client).

The PMB::PrintJob also has the convinience class method `execute`. This is an alias of `create`.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

