require 'test_helper'

class MyclicksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myclicks_index_url
    assert_response :success
  end

  test "should get new" do
    get myclicks_new_url
    assert_response :success
  end

  test "should get create" do
    get myclicks_create_url
    assert_response :success
  end

  test "should get destroy" do
    get myclicks_destroy_url
    assert_response :success
  end

end
