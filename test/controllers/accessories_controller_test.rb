require "test_helper"

class AccessoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accessories_index_url
    assert_response :success
  end

  test "should get show" do
    get accessories_show_url
    assert_response :success
  end

  test "should get new" do
    get accessories_new_url
    assert_response :success
  end

  test "should get create" do
    get accessories_create_url
    assert_response :success
  end

  test "should get edit" do
    get accessories_edit_url
    assert_response :success
  end

  test "should get update" do
    get accessories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get accessories_destroy_url
    assert_response :success
  end
end
