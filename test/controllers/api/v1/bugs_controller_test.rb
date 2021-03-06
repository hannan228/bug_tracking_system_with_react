require "test_helper"

class Api::V1::BugsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_bugs_index_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_bugs_new_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_bugs_show_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_bugs_edit_url
    assert_response :success
  end
end
