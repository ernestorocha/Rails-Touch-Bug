require 'test_helper'

class TouchedsControllerTest < ActionController::TestCase
  setup do
    @touched = toucheds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toucheds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create touched" do
    assert_difference('Touched.count') do
      post :create, touched: @touched.attributes
    end

    assert_redirected_to touched_path(assigns(:touched))
  end

  test "should show touched" do
    get :show, id: @touched
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @touched
    assert_response :success
  end

  test "should update touched" do
    put :update, id: @touched, touched: @touched.attributes
    assert_redirected_to touched_path(assigns(:touched))
  end

  test "should destroy touched" do
    assert_difference('Touched.count', -1) do
      delete :destroy, id: @touched
    end

    assert_redirected_to toucheds_path
  end
end
