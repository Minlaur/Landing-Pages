require "test_helper"

class PoliciesControllerTest < ActionDispatch::IntegrationTest
  test "should get policies_en" do
    get policies_policies_en_url
    assert_response :success
  end

  test "should get policies_ph" do
    get policies_policies_ph_url
    assert_response :success
  end

  test "should get policies_jp" do
    get policies_policies_jp_url
    assert_response :success
  end
end
