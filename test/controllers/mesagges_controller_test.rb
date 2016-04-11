require 'test_helper'

class MesaggesControllerTest < ActionController::TestCase
  setup do
    @mesagge = mesagges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mesagges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mesagge" do
    assert_difference('Mesagge.count') do
      post :create, mesagge: { message: @mesagge.message }
    end

    assert_redirected_to mesagge_path(assigns(:mesagge))
  end

  test "should show mesagge" do
    get :show, id: @mesagge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mesagge
    assert_response :success
  end

  test "should update mesagge" do
    patch :update, id: @mesagge, mesagge: { message: @mesagge.message }
    assert_redirected_to mesagge_path(assigns(:mesagge))
  end

  test "should destroy mesagge" do
    assert_difference('Mesagge.count', -1) do
      delete :destroy, id: @mesagge
    end

    assert_redirected_to mesagges_path
  end
end
