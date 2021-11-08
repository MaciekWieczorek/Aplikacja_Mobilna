require "test_helper"

class UsersIdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_id = users_ids(:one)
  end

  test "should get index" do
    get users_ids_url
    assert_response :success
  end

  test "should get new" do
    get new_users_id_url
    assert_response :success
  end

  test "should create users_id" do
    assert_difference('UsersId.count') do
      post users_ids_url, params: { users_id: { index: @users_id.index, list_of_templates: @users_id.list_of_templates, ongoing_event: @users_id.ongoing_event } }
    end

    assert_redirected_to users_id_url(UsersId.last)
  end

  test "should show users_id" do
    get users_id_url(@users_id)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_id_url(@users_id)
    assert_response :success
  end

  test "should update users_id" do
    patch users_id_url(@users_id), params: { users_id: { index: @users_id.index, list_of_templates: @users_id.list_of_templates, ongoing_event: @users_id.ongoing_event } }
    assert_redirected_to users_id_url(@users_id)
  end

  test "should destroy users_id" do
    assert_difference('UsersId.count', -1) do
      delete users_id_url(@users_id)
    end

    assert_redirected_to users_ids_url
  end
end
