require "test_helper"

class PrivacyControllerTest < ActionDispatch::IntegrationTest
  test "should get privacy_en" do
    get privacy_privacy_en_url
    assert_response :success
  end

  test "should get privacy_ph" do
    get privacy_privacy_ph_url
    assert_response :success
  end

  test "should get privacy_jp" do
    get privacy_privacy_jp_url
    assert_response :success
  end
end
