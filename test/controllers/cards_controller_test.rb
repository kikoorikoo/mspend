require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post :create, card: { amount: @card.amount, bonus: @card.bonus, card_from: @card.card_from, card_to: @card.card_to, date: @card.date, fee: @card.fee, last4: @card.last4, load_date: @card.load_date, manufacturer: @card.manufacturer, notes: @card.notes, portal: @card.portal, purchase_date: @card.purchase_date, store_purchased: @card.store_purchased }
    end

    assert_redirected_to card_path(assigns(:card))
  end

  test "should show card" do
    get :show, id: @card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @card
    assert_response :success
  end

  test "should update card" do
    patch :update, id: @card, card: { amount: @card.amount, bonus: @card.bonus, card_from: @card.card_from, card_to: @card.card_to, date: @card.date, fee: @card.fee, last4: @card.last4, load_date: @card.load_date, manufacturer: @card.manufacturer, notes: @card.notes, portal: @card.portal, purchase_date: @card.purchase_date, store_purchased: @card.store_purchased }
    assert_redirected_to card_path(assigns(:card))
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete :destroy, id: @card
    end

    assert_redirected_to cards_path
  end
end
