require 'test_helper'

class TrackerControllerTest < ActionDispatch::IntegrationTest
  test "should get position" do
    get tracker_position_url
    assert_response :success
  end

end
