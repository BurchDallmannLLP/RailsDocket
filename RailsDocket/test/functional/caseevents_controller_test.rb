require 'test_helper'

class CaseeventsControllerTest < ActionController::TestCase
  setup do
    @caseevent = caseevents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caseevents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caseevent" do
    assert_difference('Caseevent.count') do
      post :create, :caseevent => @caseevent.attributes
    end

    assert_redirected_to caseevent_path(assigns(:caseevent))
  end

  test "should show caseevent" do
    get :show, :id => @caseevent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @caseevent.to_param
    assert_response :success
  end

  test "should update caseevent" do
    put :update, :id => @caseevent.to_param, :caseevent => @caseevent.attributes
    assert_redirected_to caseevent_path(assigns(:caseevent))
  end

  test "should destroy caseevent" do
    assert_difference('Caseevent.count', -1) do
      delete :destroy, :id => @caseevent.to_param
    end

    assert_redirected_to caseevents_path
  end
end
