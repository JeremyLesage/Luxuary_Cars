require "application_system_test_case"

class MonComptesTest < ApplicationSystemTestCase
  setup do
    @mon_compte = mon_comptes(:one)
  end

  test "visiting the index" do
    visit mon_comptes_url
    assert_selector "h1", text: "Mon Comptes"
  end

  test "creating a Mon compte" do
    visit mon_comptes_url
    click_on "New Mon Compte"

    fill_in "Adress", with: @mon_compte.adress
    check "H f" if @mon_compte.h_f
    fill_in "Nom", with: @mon_compte.nom
    fill_in "Numéro tel", with: @mon_compte.numéro_tel
    fill_in "Photo", with: @mon_compte.photo
    fill_in "Prenom", with: @mon_compte.prenom
    click_on "Create Mon compte"

    assert_text "Mon compte was successfully created"
    click_on "Back"
  end

  test "updating a Mon compte" do
    visit mon_comptes_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @mon_compte.adress
    check "H f" if @mon_compte.h_f
    fill_in "Nom", with: @mon_compte.nom
    fill_in "Numéro tel", with: @mon_compte.numéro_tel
    fill_in "Photo", with: @mon_compte.photo
    fill_in "Prenom", with: @mon_compte.prenom
    click_on "Update Mon compte"

    assert_text "Mon compte was successfully updated"
    click_on "Back"
  end

  test "destroying a Mon compte" do
    visit mon_comptes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mon compte was successfully destroyed"
  end
end
