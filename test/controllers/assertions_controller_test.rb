require 'test_helper'

class AssertionsControllerTest < ActionController::TestCase
  setup do
    @assertion = assertions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assertions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assertion" do
    assert_difference('Assertion.count') do
      post :create, assertion: { description: @assertion.description, notes: @assertion.notes, user_id: @assertion.user_id }
    end

    assert_redirected_to assertion_path(assigns(:assertion))
  end

  test "should show assertion" do
    get :show, id: @assertion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assertion
    assert_response :success
  end

  test "should update assertion" do
    patch :update, id: @assertion, assertion: { description: @assertion.description, notes: @assertion.notes, user_id: @assertion.user_id }
    assert_redirected_to assertion_path(assigns(:assertion))
  end

  test "should destroy assertion" do
    assert_difference('Assertion.count', -1) do
      delete :destroy, id: @assertion
    end

    assert_redirected_to assertions_path
  end
end
