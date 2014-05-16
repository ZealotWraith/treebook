require 'test_helper'

class SttusControllerTest < ActionController::TestCase
  setup do
    @sttu = sttus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sttus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sttu" do
    assert_difference('Sttu.count') do
      post :create, sttu: { content: @sttu.content, name: @sttu.name }
    end

    assert_redirected_to sttu_path(assigns(:sttu))
  end

  test "should show sttu" do
    get :show, id: @sttu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sttu
    assert_response :success
  end

  test "should update sttu" do
    patch :update, id: @sttu, sttu: { content: @sttu.content, name: @sttu.name }
    assert_redirected_to sttu_path(assigns(:sttu))
  end

  test "should destroy sttu" do
    assert_difference('Sttu.count', -1) do
      delete :destroy, id: @sttu
    end

    assert_redirected_to sttus_path
  end
end
