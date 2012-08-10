require 'test_helper'

class VolumeTest < ActiveSupport::TestCase

  test "should not save volume without title" do
    volume = Volume.new
    assert !volume.save, "Saved the volume without a title"
  end
  
  test "Can search for volume" do
    volume = Volume.new
    volume.title = "This is a new volume"
    volume.body = "This is the new body"
    !volume.save

    Sunspot.commit

    result = Volume.search do 
      fulltext 'body'  
    end
    assert_equal 1, result.total
  end
  
end
