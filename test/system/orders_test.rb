require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Avance", with: @order.avance
    fill_in "Etat command", with: @order.etat_command
    check "Etat facture" if @order.etat_facture
    fill_in "Image", with: @order.image
    fill_in "Livraison", with: @order.livraison
    fill_in "Montant total", with: @order.montant_total
    fill_in "Priority", with: @order.priority
    fill_in "Reste", with: @order.reste
    fill_in "User", with: @order.user_id
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Avance", with: @order.avance
    fill_in "Etat command", with: @order.etat_command
    check "Etat facture" if @order.etat_facture
    fill_in "Image", with: @order.image
    fill_in "Livraison", with: @order.livraison
    fill_in "Montant total", with: @order.montant_total
    fill_in "Priority", with: @order.priority
    fill_in "Reste", with: @order.reste
    fill_in "User", with: @order.user_id
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
