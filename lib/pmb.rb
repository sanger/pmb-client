require "json_api_client"
require "pmb/version"

module PMB
  class Base < JsonApiClient::Resource
  end

  class LabelType < Base
    has_many :label_templates
  end

  class LabelTemplate < Base
    has_many :labels
  end

  class Label < Base
    has_many :bitmaps
    has_many :barcodes
  end

  class Bitmap < Base
  end

  class Barcode < Base
  end

  class PrintJob < Base
    class << self
      alias_method :execute, :create
    end
  end

  class Printer < Base
  end
end