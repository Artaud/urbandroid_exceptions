require 'test_helper'

class ExcpsControllerTest < ActionController::TestCase
  setup do
    @excp = excps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:excps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create excp" do
    assert_difference('Excp.count') do
      post :create, excp: { date_fixed: @excp.date_fixed, excp_thread: @excp.excp_thread, excp_trace: @excp.excp_trace, fixed: @excp.fixed, notes: @excp.notes, user_id: @excp.user_id }
    end

    assert_redirected_to excp_path(assigns(:excp))
  end

  test "should show excp" do
    get :show, id: @excp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @excp
    assert_response :success
  end

  test "should update excp" do
    patch :update, id: @excp, excp: { date_fixed: @excp.date_fixed, excp_thread: @excp.excp_thread, excp_trace: @excp.excp_trace, fixed: @excp.fixed, notes: @excp.notes, user_id: @excp.user_id }
    assert_redirected_to excp_path(assigns(:excp))
  end

  test "should destroy excp" do
    assert_difference('Excp.count', -1) do
      delete :destroy, id: @excp
    end

    assert_redirected_to excps_path
  end
end
