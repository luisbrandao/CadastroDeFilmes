require 'test_helper'

class RoteiristasControllerTest < ActionController::TestCase
  setup do
    @roteirista = roteiristas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roteiristas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roteirista" do
    assert_difference('Roteirista.count') do
      post :create, roteirista: { nome: @roteirista.nome }
    end

    assert_redirected_to roteirista_path(assigns(:roteirista))
  end

  test "should show roteirista" do
    get :show, id: @roteirista
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roteirista
    assert_response :success
  end

  test "should update roteirista" do
    put :update, id: @roteirista, roteirista: { nome: @roteirista.nome }
    assert_redirected_to roteirista_path(assigns(:roteirista))
  end

  test "should destroy roteirista" do
    assert_difference('Roteirista.count', -1) do
      delete :destroy, id: @roteirista
    end

    assert_redirected_to roteiristas_path
  end
end
