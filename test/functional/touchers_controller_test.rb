require 'test_helper'

class TouchersControllerTest < ActionController::TestCase
  setup do
    @toucher = touchers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:touchers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toucher" do
    assert_difference('Toucher.count') do
      post :create, toucher: @toucher.attributes
    end

    assert_redirected_to toucher_path(assigns(:toucher))
  end

  test "should show toucher" do
    get :show, id: @toucher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toucher
    assert_response :success
  end

  test "should update toucher" do
    put :update, id: @toucher, toucher: @toucher.attributes
    assert_redirected_to toucher_path(assigns(:toucher))
  end

  test "should destroy toucher" do
    assert_difference('Toucher.count', -1) do
      delete :destroy, id: @toucher
    end

    assert_redirected_to touchers_path
  end
end
