require "test_helper"

class MonComptesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mon_compte = mon_comptes(:one)
  end

  test "should get index" do
    get mon_comptes_url
    assert_response :success
  end

  test "should get new" do
    get new_mon_compte_url
    assert_response :success
  end

  test "should create mon_compte" do
    assert_difference('MonCompte.count') do
      post mon_comptes_url, params: { mon_compte: { adress: @mon_compte.adress, h_f: @mon_compte.h_f, nom: @mon_compte.nom, numéro_tel: @mon_compte.numéro_tel, photo: @mon_compte.photo, prenom: @mon_compte.prenom } }
    end

    assert_redirected_to mon_compte_url(MonCompte.last)
  end

  test "should show mon_compte" do
    get mon_compte_url(@mon_compte)
    assert_response :success
  end

  test "should get edit" do
    get edit_mon_compte_url(@mon_compte)
    assert_response :success
  end

  test "should update mon_compte" do
    patch mon_compte_url(@mon_compte), params: { mon_compte: { adress: @mon_compte.adress, h_f: @mon_compte.h_f, nom: @mon_compte.nom, numéro_tel: @mon_compte.numéro_tel, photo: @mon_compte.photo, prenom: @mon_compte.prenom } }
    assert_redirected_to mon_compte_url(@mon_compte)
  end

  test "should destroy mon_compte" do
    assert_difference('MonCompte.count', -1) do
      delete mon_compte_url(@mon_compte)
    end

    assert_redirected_to mon_comptes_url
  end
end
