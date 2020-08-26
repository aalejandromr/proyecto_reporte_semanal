require 'test_helper'

class LiderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lider_index_url
    assert_response :success
  end

  test "should get show" do
    get lider_show_url
    assert_response :success
  end

  test "should get new" do
    get lider_new_url
    assert_response :success
  end

  test "should get edit" do
    get lider_edit_url
    assert_response :success
  end

  test "should get create" do
    get lider_create_url
    assert_response :success
  end

  test "should get update" do
    get lider_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lider_destroy_url
    assert_response :success
  end

end
