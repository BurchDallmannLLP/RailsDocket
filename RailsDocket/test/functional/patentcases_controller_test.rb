require 'test_helper'

class PatentcasesControllerTest < ActionController::TestCase
  setup do
    @patentcase = patentcases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patentcases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patentcase" do
    assert_difference('Patentcase.count') do
      post :create, :patentcase => @patentcase.attributes
    end

    assert_redirected_to patentcase_path(assigns(:patentcase))
  end

  test "should show patentcase" do
    get :show, :id => @patentcase.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @patentcase.to_param
    assert_response :success
  end

  test "should update patentcase" do
    put :update, :id => @patentcase.to_param, :patentcase => @patentcase.attributes
    assert_redirected_to patentcase_path(assigns(:patentcase))
  end

  test "should destroy patentcase" do
    assert_difference('Patentcase.count', -1) do
      delete :destroy, :id => @patentcase.to_param
    end

    assert_redirected_to patentcases_path
  end
end
