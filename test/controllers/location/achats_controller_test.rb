require "test_helper"

class Location::AchatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location_achat = location_achats(:one)
  end

  test "should get index" do
    get location_achats_url
    assert_response :success
  end

  test "should get new" do
    get new_location_achat_url
    assert_response :success
  end

  test "should create location_achat" do
    assert_difference('Location::Achat.count') do
      post location_achats_url, params: { location_achat: { acceleration: @location_achat.acceleration, nom_voiture: @location_achat.nom_voiture, photo: @location_achat.photo, prix: @location_achat.prix, puissance: @location_achat.puissance, vitesse_max: @location_achat.vitesse_max } }
    end

    assert_redirected_to location_achat_url(Location::Achat.last)
  end

  test "should show location_achat" do
    get location_achat_url(@location_achat)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_achat_url(@location_achat)
    assert_response :success
  end

  test "should update location_achat" do
    patch location_achat_url(@location_achat), params: { location_achat: { acceleration: @location_achat.acceleration, nom_voiture: @location_achat.nom_voiture, photo: @location_achat.photo, prix: @location_achat.prix, puissance: @location_achat.puissance, vitesse_max: @location_achat.vitesse_max } }
    assert_redirected_to location_achat_url(@location_achat)
  end

  test "should destroy location_achat" do
    assert_difference('Location::Achat.count', -1) do
      delete location_achat_url(@location_achat)
    end

    assert_redirected_to location_achats_url
  end
end
