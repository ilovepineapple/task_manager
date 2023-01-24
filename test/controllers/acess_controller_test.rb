require "test_helper"

class AcessControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get acess_new_url
    assert_response :success
  end

  test "should get create" do
    get acess_create_url
    assert_response :success
  end

  test "should get destroy" do
    get acess_destroy_url
    assert_response :success
  end
end
