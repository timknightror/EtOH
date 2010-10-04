require 'test_helper'

class TestlocsControllerTest < ActionController::TestCase
  setup do
    @testloc = testlocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testlocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testloc" do
    assert_difference('Testloc.count') do
      post :create, :testloc => @testloc.attributes
    end

    assert_redirected_to testloc_path(assigns(:testloc))
  end

  test "should show testloc" do
    get :show, :id => @testloc.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @testloc.to_param
    assert_response :success
  end

  test "should update testloc" do
    put :update, :id => @testloc.to_param, :testloc => @testloc.attributes
    assert_redirected_to testloc_path(assigns(:testloc))
  end

  test "should destroy testloc" do
    assert_difference('Testloc.count', -1) do
      delete :destroy, :id => @testloc.to_param
    end

    assert_redirected_to testlocs_path
  end
end
