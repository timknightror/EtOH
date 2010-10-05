require 'test_helper'

class PtypesControllerTest < ActionController::TestCase
  setup do
    @ptype = ptypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ptypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ptype" do
    assert_difference('Ptype.count') do
      post :create, :ptype => @ptype.attributes
    end

    assert_redirected_to ptype_path(assigns(:ptype))
  end

  test "should show ptype" do
    get :show, :id => @ptype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ptype.to_param
    assert_response :success
  end

  test "should update ptype" do
    put :update, :id => @ptype.to_param, :ptype => @ptype.attributes
    assert_redirected_to ptype_path(assigns(:ptype))
  end

  test "should destroy ptype" do
    assert_difference('Ptype.count', -1) do
      delete :destroy, :id => @ptype.to_param
    end

    assert_redirected_to ptypes_path
  end
end
