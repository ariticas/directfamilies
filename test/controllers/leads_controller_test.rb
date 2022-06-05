require "test_helper"

class LeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get leads_new_url
    assert_response :success
  end

  test "should get show" do
    get leads_show_url
    assert_response :success
  end
end
