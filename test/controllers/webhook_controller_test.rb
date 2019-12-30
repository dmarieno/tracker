require 'test_helper'

class WebhookControllerTest < ActionDispatch::IntegrationTest
  test "should get logistidata" do
    get webhook_logistidata_url
    assert_response :success
  end

end
