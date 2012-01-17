require 'test_helper'

class ClientcasesControllerTest < ActionController::TestCase
  setup do
    @clientcase = clientcases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientcases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientcase" do
    assert_difference('Clientcase.count') do
      post :create, :clientcase => @clientcase.attributes
    end

    assert_redirected_to clientcase_path(assigns(:clientcase))
  end

  test "should show clientcase" do
    get :show, :id => @clientcase.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clientcase.to_param
    assert_response :success
  end

  test "should update clientcase" do
    put :update, :id => @clientcase.to_param, :clientcase => @clientcase.attributes
    assert_redirected_to clientcase_path(assigns(:clientcase))
  end

  test "should destroy clientcase" do
    assert_difference('Clientcase.count', -1) do
      delete :destroy, :id => @clientcase.to_param
    end

    assert_redirected_to clientcases_path
  end
end
