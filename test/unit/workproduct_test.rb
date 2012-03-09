require 'test_helper'

class WorkproductTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Workproduct.new.valid?
  end
end
