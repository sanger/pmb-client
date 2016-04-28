require 'test_helper'

class PMB::Test < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PMB::VERSION
  end

end
