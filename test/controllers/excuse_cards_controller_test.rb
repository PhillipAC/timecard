require 'test_helper'

class ExcuseCardsControllerTest < ActionController::TestCase
  setup do
    @excuse_card = excuse_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:excuse_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create excuse_card" do
    assert_difference('ExcuseCard.count') do
      post :create, excuse_card: { check_in: @excuse_card.check_in, check_out: @excuse_card.check_out, excuse_id: @excuse_card.excuse_id }
    end

    assert_redirected_to excuse_card_path(assigns(:excuse_card))
  end

  test "should show excuse_card" do
    get :show, id: @excuse_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @excuse_card
    assert_response :success
  end

  test "should update excuse_card" do
    patch :update, id: @excuse_card, excuse_card: { check_in: @excuse_card.check_in, check_out: @excuse_card.check_out, excuse_id: @excuse_card.excuse_id }
    assert_redirected_to excuse_card_path(assigns(:excuse_card))
  end

  test "should destroy excuse_card" do
    assert_difference('ExcuseCard.count', -1) do
      delete :destroy, id: @excuse_card
    end

    assert_redirected_to excuse_cards_path
  end
end
