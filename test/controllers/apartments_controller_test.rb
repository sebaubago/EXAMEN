require "test_helper"

class ApartmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apartments_index_url
    assert_response :success
  end

  test "should get show" do
    get apartments_show_url
    assert_response :success
  end

  test "should get new" do
    get apartments_new_url
    assert_response :success
  end

  test "should get edit" do
    get apartments_edit_url
    assert_response :success
  end

  test "should get delete" do
    get apartments_delete_url
    assert_response :success
  end
end
