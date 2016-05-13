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
require 'pmb-client'

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

### Some examples

Basic print job creation.
```ruby
PMB::PrintJob.create(
  printer_name:'printer_name',
  label_template_id:1,
  labels:{
    body:[{
      label_name:{
        bitmap_name_a:'bitmap_text',
        bitmap_name_b:'bitmap_text',
        barcode_name_a:'barcode_value'
      }
    }]
  }
)
```

Registering a new template type
```ruby
label_type_id = PMB::LabelType.all.detect {|lt| lt.name == 'Example Type'}.id
label_template = PMB::LabelTemplate.create({
  name: 'Temlatey McTemplateface',
  label_type_id: label_type_id, # Plate
  labels_attributes:[{
    name: 'label_name',
    bitmaps_attributes:[
      {"horizontal_magnification":"05","vertical_magnification":"1","font":"G","space_adjustment":"00","rotational_angles":"00","x_origin":"0030","y_origin":"0035","field_name":"bitmap_name_a"},
      {"horizontal_magnification":"05","vertical_magnification":"1","font":"G","space_adjustment":"00","rotational_angles":"00","x_origin":"0030","y_origin":"0065","field_name":"bitmap_name_b"}
    ],
    barcodes_attributes:[{"barcode_type":"9","one_module_width":"02","height":"0070","x_origin":"0300","y_origin":"0000","field_name":"barcode_name_a"}]
  }]
})
```


## License

The gem is available as open source under the terms of the [GPL 3.0 License](https://opensource.org/licenses/GPL-3.0).

