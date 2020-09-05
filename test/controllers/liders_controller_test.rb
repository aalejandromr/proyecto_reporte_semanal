require 'test_helper'

class LidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lider = liders(:one)
  end

  test "should get index" do
    get liders_url
    assert_response :success
  end

  test "should get new" do
    get new_lider_url
    assert_response :success
  end

  test "should create lider" do
    assert_difference('Lider.count') do
      post liders_url, params: { lider: {  } }
    end

    assert_redirected_to lider_url(Lider.last)
  end

  test "should show lider" do
    get lider_url(@lider)
    assert_response :success
  end

  test "should get edit" do
    get edit_lider_url(@lider)
    assert_response :success
  end

  test "should update lider" do
    patch lider_url(@lider), params: { lider: {  } }
    assert_redirected_to lider_url(@lider)
  end

  test "should destroy lider" do
    assert_difference('Lider.count', -1) do
      delete lider_url(@lider)
    end

    assert_redirected_to liders_url
  end
end
