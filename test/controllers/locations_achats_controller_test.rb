require "test_helper"

class LocationsAchatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locations_achat = locations_achats(:one)
  end

  test "should get index" do
    get locations_achats_url
    assert_response :success
  end

  test "should get new" do
    get new_locations_achat_url
    assert_response :success
  end

  test "should create locations_achat" do
    assert_difference('LocationsAchat.count') do
      post locations_achats_url, params: { locations_achat: { acceleration: @locations_achat.acceleration, nom_voiture: @locations_achat.nom_voiture, photo: @locations_achat.photo, prix: @locations_achat.prix, puissance: @locations_achat.puissance, vitesse_max: @locations_achat.vitesse_max } }
    end

    assert_redirected_to locations_achat_url(LocationsAchat.last)
  end

  test "should show locations_achat" do
    get locations_achat_url(@locations_achat)
    assert_response :success
  end

  test "should get edit" do
    get edit_locations_achat_url(@locations_achat)
    assert_response :success
  end

  test "should update locations_achat" do
    patch locations_achat_url(@locations_achat), params: { locations_achat: { acceleration: @locations_achat.acceleration, nom_voiture: @locations_achat.nom_voiture, photo: @locations_achat.photo, prix: @locations_achat.prix, puissance: @locations_achat.puissance, vitesse_max: @locations_achat.vitesse_max } }
    assert_redirected_to locations_achat_url(@locations_achat)
  end

  test "should destroy locations_achat" do
    assert_difference('LocationsAchat.count', -1) do
      delete locations_achat_url(@locations_achat)
    end

    assert_redirected_to locations_achats_url
  end
end
