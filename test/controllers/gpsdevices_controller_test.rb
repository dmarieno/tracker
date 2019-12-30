require 'test_helper'

class GpsdevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gpsdevice = gpsdevices(:one)
  end

  test "should get index" do
    get gpsdevices_url
    assert_response :success
  end

  test "should get new" do
    get new_gpsdevice_url
    assert_response :success
  end

  test "should create gpsdevice" do
    assert_difference('Gpsdevice.count') do
      post gpsdevices_url, params: { gpsdevice: { : @gpsdevice., latitude: @gpsdevice.latitude, longitude: @gpsdevice.longitude, string: @gpsdevice.string, string: @gpsdevice.string, string: @gpsdevice.string, timestamp: @gpsdevice.timestamp } }
    end

    assert_redirected_to gpsdevice_url(Gpsdevice.last)
  end

  test "should show gpsdevice" do
    get gpsdevice_url(@gpsdevice)
    assert_response :success
  end

  test "should get edit" do
    get edit_gpsdevice_url(@gpsdevice)
    assert_response :success
  end

  test "should update gpsdevice" do
    patch gpsdevice_url(@gpsdevice), params: { gpsdevice: { : @gpsdevice., latitude: @gpsdevice.latitude, longitude: @gpsdevice.longitude, string: @gpsdevice.string, string: @gpsdevice.string, string: @gpsdevice.string, timestamp: @gpsdevice.timestamp } }
    assert_redirected_to gpsdevice_url(@gpsdevice)
  end

  test "should destroy gpsdevice" do
    assert_difference('Gpsdevice.count', -1) do
      delete gpsdevice_url(@gpsdevice)
    end

    assert_redirected_to gpsdevices_url
  end
end
