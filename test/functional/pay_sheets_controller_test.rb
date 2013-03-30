require 'test_helper'

class PaySheetsControllerTest < ActionController::TestCase
  setup do
    @pay_sheet = pay_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pay_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay_sheet" do
    assert_difference('PaySheet.count') do
      post :create, pay_sheet: { amount: @pay_sheet.amount, date: @pay_sheet.date, observation: @pay_sheet.observation }
    end

    assert_redirected_to pay_sheet_path(assigns(:pay_sheet))
  end

  test "should show pay_sheet" do
    get :show, id: @pay_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pay_sheet
    assert_response :success
  end

  test "should update pay_sheet" do
    put :update, id: @pay_sheet, pay_sheet: { amount: @pay_sheet.amount, date: @pay_sheet.date, observation: @pay_sheet.observation }
    assert_redirected_to pay_sheet_path(assigns(:pay_sheet))
  end

  test "should destroy pay_sheet" do
    assert_difference('PaySheet.count', -1) do
      delete :destroy, id: @pay_sheet
    end

    assert_redirected_to pay_sheets_path
  end
end
