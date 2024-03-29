require 'test_helper'

class Product1sControllerTest < ActionController::TestCase
  setup do
    @product1 = product1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product1" do
    assert_difference('Product1.count') do
      post :create, product1: { description: @product1.description, location: @product1.location, name: @product1.name }
    end

    assert_redirected_to product1_path(assigns(:product1))
  end

  test "should show product1" do
    get :show, id: @product1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product1
    assert_response :success
  end

  test "should update product1" do
    patch :update, id: @product1, product1: { description: @product1.description, location: @product1.location, name: @product1.name }
    assert_redirected_to product1_path(assigns(:product1))
  end

  test "should destroy product1" do
    assert_difference('Product1.count', -1) do
      delete :destroy, id: @product1
    end

    assert_redirected_to product1s_path
  end
end
