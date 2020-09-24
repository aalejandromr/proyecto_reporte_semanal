require 'test_helper'

class PastorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pastor = pastors(:one)
  end

  test "should get index" do
    get pastors_url
    assert_response :success
  end

  test "should get new" do
    get new_pastor_url
    assert_response :success
  end

  test "should create pastor" do
    assert_difference('Pastor.count') do
      post pastors_url, params: { pastor: { name: @pastor.name } }
    end

    assert_redirected_to pastor_url(Pastor.last)
  end

  test "should show pastor" do
    get pastor_url(@pastor)
    assert_response :success
  end

  test "should get edit" do
    get edit_pastor_url(@pastor)
    assert_response :success
  end

  test "should update pastor" do
    patch pastor_url(@pastor), params: { pastor: { name: @pastor.name } }
    assert_redirected_to pastor_url(@pastor)
  end

  test "should destroy pastor" do
    assert_difference('Pastor.count', -1) do
      delete pastor_url(@pastor)
    end

    assert_redirected_to pastors_url
  end
end
