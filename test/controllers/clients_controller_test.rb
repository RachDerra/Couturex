require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { bas: @client.bas, bassin: @client.bassin, ceinture: @client.ceinture, cuisse: @client.cuisse, dos: @client.dos, email: @client.email, epaule: @client.epaule, frappe: @client.frappe, genoux: @client.genoux, genre: @client.genre, image: @client.image, long_camisole: @client.long_camisole, long_chemise: @client.long_chemise, long_jupe: @client.long_jupe, long_manche: @client.long_manche, long_pantalon: @client.long_pantalon, long_robe: @client.long_robe, long_taille: @client.long_taille, name: @client.name, pinces: @client.pinces, poignet: @client.poignet, poitrine: @client.poitrine, telephone: @client.telephone, tour_bras: @client.tour_bras, tour_cou: @client.tour_cou, tour_manche: @client.tour_manche, tour_taille: @client.tour_taille, ventre: @client.ventre } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { bas: @client.bas, bassin: @client.bassin, ceinture: @client.ceinture, cuisse: @client.cuisse, dos: @client.dos, email: @client.email, epaule: @client.epaule, frappe: @client.frappe, genoux: @client.genoux, genre: @client.genre, image: @client.image, long_camisole: @client.long_camisole, long_chemise: @client.long_chemise, long_jupe: @client.long_jupe, long_manche: @client.long_manche, long_pantalon: @client.long_pantalon, long_robe: @client.long_robe, long_taille: @client.long_taille, name: @client.name, pinces: @client.pinces, poignet: @client.poignet, poitrine: @client.poitrine, telephone: @client.telephone, tour_bras: @client.tour_bras, tour_cou: @client.tour_cou, tour_manche: @client.tour_manche, tour_taille: @client.tour_taille, ventre: @client.ventre } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
