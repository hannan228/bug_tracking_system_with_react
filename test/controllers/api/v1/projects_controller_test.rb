require "test_helper"

class Api::V1::ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_projects_index_url
    assert_response :success
  end

  test "should get new" do
    get api_v1_projects_new_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_projects_show_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_projects_edit_url
    assert_response :success
  end
end
