require "test_helper"

class TodoslistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todoslist = todoslists(:one)
  end

  test "should get index" do
    get todoslists_url
    assert_response :success
  end

  test "should get new" do
    get new_todoslist_url
    assert_response :success
  end

  test "should create todoslist" do
    assert_difference('Todoslist.count') do
      post todoslists_url, params: { todoslist: { description: @todoslist.description, title: @todoslist.title } }
    end

    assert_redirected_to todoslist_url(Todoslist.last)
  end

  test "should show todoslist" do
    get todoslist_url(@todoslist)
    assert_response :success
  end

  test "should get edit" do
    get edit_todoslist_url(@todoslist)
    assert_response :success
  end

  test "should update todoslist" do
    patch todoslist_url(@todoslist), params: { todoslist: { description: @todoslist.description, title: @todoslist.title } }
    assert_redirected_to todoslist_url(@todoslist)
  end

  test "should destroy todoslist" do
    assert_difference('Todoslist.count', -1) do
      delete todoslist_url(@todoslist)
    end

    assert_redirected_to todoslists_url
  end
end
