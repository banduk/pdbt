require 'test_helper'

class BillTracksControllerTest < ActionController::TestCase
  setup do
    @bill_track = bill_tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_track" do
    assert_difference('BillTrack.count') do
      post :create, bill_track: { observation: @bill_track.observation, pay_date: @bill_track.pay_date }
    end

    assert_redirected_to bill_track_path(assigns(:bill_track))
  end

  test "should show bill_track" do
    get :show, id: @bill_track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_track
    assert_response :success
  end

  test "should update bill_track" do
    put :update, id: @bill_track, bill_track: { observation: @bill_track.observation, pay_date: @bill_track.pay_date }
    assert_redirected_to bill_track_path(assigns(:bill_track))
  end

  test "should destroy bill_track" do
    assert_difference('BillTrack.count', -1) do
      delete :destroy, id: @bill_track
    end

    assert_redirected_to bill_tracks_path
  end
end
