require 'test_helper'

class TeethControllerTest < ActionController::TestCase
  setup do
    @tooth = teeth(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teeth)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tooth" do
    assert_difference('Tooth.count') do
      post :create, tooth: { pic_name: @tooth.pic_name, times: @tooth.times }
    end

    assert_redirected_to tooth_path(assigns(:tooth))
  end

  test "should show tooth" do
    get :show, id: @tooth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tooth
    assert_response :success
  end

  test "should update tooth" do
    patch :update, id: @tooth, tooth: { pic_name: @tooth.pic_name, times: @tooth.times }
    assert_redirected_to tooth_path(assigns(:tooth))
  end

  test "should destroy tooth" do
    assert_difference('Tooth.count', -1) do
      delete :destroy, id: @tooth
    end

    assert_redirected_to teeth_path
  end
end
