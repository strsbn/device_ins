require "test_helper"

class DeviceInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_in = device_ins(:one)
  end

  test "should get index" do
    get device_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_device_in_url
    assert_response :success
  end

  test "should create device_in" do
    assert_difference('DeviceIn.count') do
      post device_ins_url, params: { device_in: { content: @device_in.content, title: @device_in.title } }
    end

    assert_redirected_to device_in_url(DeviceIn.last)
  end

  test "should show device_in" do
    get device_in_url(@device_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_in_url(@device_in)
    assert_response :success
  end

  test "should update device_in" do
    patch device_in_url(@device_in), params: { device_in: { content: @device_in.content, title: @device_in.title } }
    assert_redirected_to device_in_url(@device_in)
  end

  test "should destroy device_in" do
    assert_difference('DeviceIn.count', -1) do
      delete device_in_url(@device_in)
    end

    assert_redirected_to device_ins_url
  end
end
