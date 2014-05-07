require 'test_helper'

class AtoresControllerTest < ActionController::TestCase
  setup do
    @ator = atores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ator" do
    assert_difference('Ator.count') do
      post :create, ator: { nome: @ator.nome }
    end

    assert_redirected_to ator_path(assigns(:ator))
  end

  test "should show ator" do
    get :show, id: @ator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ator
    assert_response :success
  end

  test "should update ator" do
    put :update, id: @ator, ator: { nome: @ator.nome }
    assert_redirected_to ator_path(assigns(:ator))
  end

  test "should destroy ator" do
    assert_difference('Ator.count', -1) do
      delete :destroy, id: @ator
    end

    assert_redirected_to atores_path
  end
end
