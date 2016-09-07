require 'test_helper'

class ExcusesControllerTest < ActionController::TestCase
  setup do
    @excuse = excuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:excuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create excuse" do
    assert_difference('Excuse.count') do
      post :create, excuse: { description: @excuse.description, name: @excuse.name }
    end

    assert_redirected_to excuse_path(assigns(:excuse))
  end

  test "should show excuse" do
    get :show, id: @excuse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @excuse
    assert_response :success
  end

  test "should update excuse" do
    patch :update, id: @excuse, excuse: { description: @excuse.description, name: @excuse.name }
    assert_redirected_to excuse_path(assigns(:excuse))
  end

  test "should destroy excuse" do
    assert_difference('Excuse.count', -1) do
      delete :destroy, id: @excuse
    end

    assert_redirected_to excuses_path
  end
end
