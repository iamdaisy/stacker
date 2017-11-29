require 'test_helper'

class TechstacksControllerTest < ActionController::TestCase
  setup do
    @techstack = techstacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techstacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create techstack" do
    assert_difference('Techstack.count') do
      post :create, techstack: { company_desc: @techstack.company_desc, company_name: @techstack.company_name, service: @techstack.service }
    end

    assert_redirected_to techstack_path(assigns(:techstack))
  end

  test "should show techstack" do
    get :show, id: @techstack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @techstack
    assert_response :success
  end

  test "should update techstack" do
    patch :update, id: @techstack, techstack: { company_desc: @techstack.company_desc, company_name: @techstack.company_name, service: @techstack.service }
    assert_redirected_to techstack_path(assigns(:techstack))
  end

  test "should destroy techstack" do
    assert_difference('Techstack.count', -1) do
      delete :destroy, id: @techstack
    end

    assert_redirected_to techstacks_path
  end
end
