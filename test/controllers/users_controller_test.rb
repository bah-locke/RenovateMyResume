require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
    @user = users(:one)
    @input_user = {
      id: 123,
      fname: 'Blake',
      lname: 'Johanning',
      email: 'blakejohanning@gmail.com',
      password: 'password',
      password_confirmation: 'password'
    }
    
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: @input_user
    end

    assert_redirected_to login_path
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

end
