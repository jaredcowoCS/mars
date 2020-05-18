require 'test_helper'

class AgenciesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agencies_index_url
    assert_response :success
  end

  test "should get new" do
    get agencies_new_url
    assert_response :success
  end

  test "should get create" do
    get agencies_create_url
    assert_response :success
  end

  test "should get show" do
    get agencies_show_url
    assert_response :success
  end

  test "should get edit" do
    get agencies_edit_url
    assert_response :success
  end

  test "should get update" do
    get agencies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get agencies_destroy_url
    assert_response :success
  end

end
