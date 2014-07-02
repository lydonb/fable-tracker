require 'test_helper'

class FablesControllerTest < ActionController::TestCase
  setup do
    @fable = fables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fable" do
    assert_difference('Fable.count') do
      post :create, fable: { date: @fable.date }
    end

    assert_redirected_to fable_path(assigns(:fable))
  end

  test "should show fable" do
    get :show, id: @fable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fable
    assert_response :success
  end

  test "should update fable" do
    patch :update, id: @fable, fable: { date: @fable.date }
    assert_redirected_to fable_path(assigns(:fable))
  end

  test "should destroy fable" do
    assert_difference('Fable.count', -1) do
      delete :destroy, id: @fable
    end

    assert_redirected_to fables_path
  end
end
