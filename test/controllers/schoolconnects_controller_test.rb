require 'test_helper'

class SchoolconnectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schoolconnect = schoolconnects(:one)
  end

  test "should get index" do
    get schoolconnects_url
    assert_response :success
  end

  test "should get new" do
    get new_schoolconnect_url
    assert_response :success
  end

  test "should create schoolconnect" do
    assert_difference('Schoolconnect.count') do
      post schoolconnects_url, params: { schoolconnect: { content: @schoolconnect.content, title: @schoolconnect.title } }
    end

    assert_redirected_to schoolconnect_url(Schoolconnect.last)
  end

  test "should show schoolconnect" do
    get schoolconnect_url(@schoolconnect)
    assert_response :success
  end

  test "should get edit" do
    get edit_schoolconnect_url(@schoolconnect)
    assert_response :success
  end

  test "should update schoolconnect" do
    patch schoolconnect_url(@schoolconnect), params: { schoolconnect: { content: @schoolconnect.content, title: @schoolconnect.title } }
    assert_redirected_to schoolconnect_url(@schoolconnect)
  end

  test "should destroy schoolconnect" do
    assert_difference('Schoolconnect.count', -1) do
      delete schoolconnect_url(@schoolconnect)
    end

    assert_redirected_to schoolconnects_url
  end
end
