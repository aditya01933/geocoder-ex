require 'test_helper'

class ClotsControllerTest < ActionController::TestCase
  setup do
    @clot = clots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clot" do
    assert_difference('Clot.count') do
      post :create, clot: { location: @clot.location, name: @clot.name }
    end

    assert_redirected_to clot_path(assigns(:clot))
  end

  test "should show clot" do
    get :show, id: @clot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clot
    assert_response :success
  end

  test "should update clot" do
    patch :update, id: @clot, clot: { location: @clot.location, name: @clot.name }
    assert_redirected_to clot_path(assigns(:clot))
  end

  test "should destroy clot" do
    assert_difference('Clot.count', -1) do
      delete :destroy, id: @clot
    end

    assert_redirected_to clots_path
  end
end
