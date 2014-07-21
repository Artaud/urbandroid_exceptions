require 'test_helper'

class OccurencesControllerTest < ActionController::TestCase
  setup do
    @occurence = occurences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:occurences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create occurence" do
    assert_difference('Occurence.count') do
      post :create, occurence: { app_version: @occurence.app_version, assertion_id: @occurence.assertion_id, date: @occurence.date, device_brand: @occurence.device_brand, device_model: @occurence.device_model, excp_id: @occurence.excp_id, operation_system_version: @occurence.operation_system_version }
    end

    assert_redirected_to occurence_path(assigns(:occurence))
  end

  test "should show occurence" do
    get :show, id: @occurence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @occurence
    assert_response :success
  end

  test "should update occurence" do
    patch :update, id: @occurence, occurence: { app_version: @occurence.app_version, assertion_id: @occurence.assertion_id, date: @occurence.date, device_brand: @occurence.device_brand, device_model: @occurence.device_model, excp_id: @occurence.excp_id, operation_system_version: @occurence.operation_system_version }
    assert_redirected_to occurence_path(assigns(:occurence))
  end

  test "should destroy occurence" do
    assert_difference('Occurence.count', -1) do
      delete :destroy, id: @occurence
    end

    assert_redirected_to occurences_path
  end
end
