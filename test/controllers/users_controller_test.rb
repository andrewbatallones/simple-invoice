require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get "/users/new"
    assert_response :success
  end

  test "should create new user" do
    post "/users", params: { user: { email_address: "foo@bar.com", password: "abc123" } }
    assert_response :redirect
  end
end
