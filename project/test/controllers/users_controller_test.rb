require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { adress: @user.adress, brith_date: @user.brith_date, city: @user.city, country: @user.country, email: @user.email, gender: @user.gender, name: @user.name, phone: @user.phone, pincode: @user.pincode, state: @user.state } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { adress: @user.adress, brith_date: @user.brith_date, city: @user.city, country: @user.country, email: @user.email, gender: @user.gender, name: @user.name, phone: @user.phone, pincode: @user.pincode, state: @user.state } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
