require 'test_helper'

class PayMethodsControllerTest < ActionController::TestCase
  setup do
    @pay_method = pay_methods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pay_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay_method" do
    assert_difference('PayMethod.count') do
      post :create, pay_method: { description: @pay_method.description, title: @pay_method.title }
    end

    assert_redirected_to pay_method_path(assigns(:pay_method))
  end

  test "should show pay_method" do
    get :show, id: @pay_method
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pay_method
    assert_response :success
  end

  test "should update pay_method" do
    put :update, id: @pay_method, pay_method: { description: @pay_method.description, title: @pay_method.title }
    assert_redirected_to pay_method_path(assigns(:pay_method))
  end

  test "should destroy pay_method" do
    assert_difference('PayMethod.count', -1) do
      delete :destroy, id: @pay_method
    end

    assert_redirected_to pay_methods_path
  end
end
