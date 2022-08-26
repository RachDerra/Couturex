require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Bas", with: @client.bas
    fill_in "Bassin", with: @client.bassin
    fill_in "Ceinture", with: @client.ceinture
    fill_in "Cuisse", with: @client.cuisse
    fill_in "Dos", with: @client.dos
    fill_in "Email", with: @client.email
    fill_in "Epaule", with: @client.epaule
    fill_in "Frappe", with: @client.frappe
    fill_in "Genoux", with: @client.genoux
    check "Genre" if @client.genre
    fill_in "Image", with: @client.image
    fill_in "Long camisole", with: @client.long_camisole
    fill_in "Long chemise", with: @client.long_chemise
    fill_in "Long jupe", with: @client.long_jupe
    fill_in "Long manche", with: @client.long_manche
    fill_in "Long pantalon", with: @client.long_pantalon
    fill_in "Long robe", with: @client.long_robe
    fill_in "Long taille", with: @client.long_taille
    fill_in "Name", with: @client.name
    fill_in "Pinces", with: @client.pinces
    fill_in "Poignet", with: @client.poignet
    fill_in "Poitrine", with: @client.poitrine
    fill_in "Telephone", with: @client.telephone
    fill_in "Tour bras", with: @client.tour_bras
    fill_in "Tour cou", with: @client.tour_cou
    fill_in "Tour manche", with: @client.tour_manche
    fill_in "Tour taille", with: @client.tour_taille
    fill_in "Ventre", with: @client.ventre
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Bas", with: @client.bas
    fill_in "Bassin", with: @client.bassin
    fill_in "Ceinture", with: @client.ceinture
    fill_in "Cuisse", with: @client.cuisse
    fill_in "Dos", with: @client.dos
    fill_in "Email", with: @client.email
    fill_in "Epaule", with: @client.epaule
    fill_in "Frappe", with: @client.frappe
    fill_in "Genoux", with: @client.genoux
    check "Genre" if @client.genre
    fill_in "Image", with: @client.image
    fill_in "Long camisole", with: @client.long_camisole
    fill_in "Long chemise", with: @client.long_chemise
    fill_in "Long jupe", with: @client.long_jupe
    fill_in "Long manche", with: @client.long_manche
    fill_in "Long pantalon", with: @client.long_pantalon
    fill_in "Long robe", with: @client.long_robe
    fill_in "Long taille", with: @client.long_taille
    fill_in "Name", with: @client.name
    fill_in "Pinces", with: @client.pinces
    fill_in "Poignet", with: @client.poignet
    fill_in "Poitrine", with: @client.poitrine
    fill_in "Telephone", with: @client.telephone
    fill_in "Tour bras", with: @client.tour_bras
    fill_in "Tour cou", with: @client.tour_cou
    fill_in "Tour manche", with: @client.tour_manche
    fill_in "Tour taille", with: @client.tour_taille
    fill_in "Ventre", with: @client.ventre
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
