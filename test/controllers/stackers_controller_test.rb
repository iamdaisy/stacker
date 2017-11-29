require 'test_helper'

class StackersControllerTest < ActionController::TestCase
  setup do
    @stacker = stackers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stackers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stacker" do
    assert_difference('Stacker.count') do
      post :create, stacker: {  }
    end

    assert_redirected_to stacker_path(assigns(:stacker))
  end

  test "should show stacker" do
    get :show, id: @stacker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stacker
    assert_response :success
  end

  test "should update stacker" do
    patch :update, id: @stacker, stacker: {  }
    assert_redirected_to stacker_path(assigns(:stacker))
  end

  test "should destroy stacker" do
    assert_difference('Stacker.count', -1) do
      delete :destroy, id: @stacker
    end

    assert_redirected_to stackers_path
  end
end
