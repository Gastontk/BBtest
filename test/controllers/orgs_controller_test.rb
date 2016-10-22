require 'test_helper'

class OrgsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get add_group_to_user" do
    get :add_group_to_user
    assert_response :success
  end

  test "should get delete_group_from_user" do
    get :delete_group_from_user
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
