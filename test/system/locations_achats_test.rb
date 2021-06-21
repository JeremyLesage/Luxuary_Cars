require "application_system_test_case"

class LocationsAchatsTest < ApplicationSystemTestCase
  setup do
    @locations_achat = locations_achats(:one)
  end

  test "visiting the index" do
    visit locations_achats_url
    assert_selector "h1", text: "Locations Achats"
  end

  test "creating a Locations achat" do
    visit locations_achats_url
    click_on "New Locations Achat"

    fill_in "Acceleration", with: @locations_achat.acceleration
    fill_in "Nom voiture", with: @locations_achat.nom_voiture
    fill_in "Photo", with: @locations_achat.photo
    fill_in "Prix", with: @locations_achat.prix
    fill_in "Puissance", with: @locations_achat.puissance
    fill_in "Vitesse max", with: @locations_achat.vitesse_max
    click_on "Create Locations achat"

    assert_text "Locations achat was successfully created"
    click_on "Back"
  end

  test "updating a Locations achat" do
    visit locations_achats_url
    click_on "Edit", match: :first

    fill_in "Acceleration", with: @locations_achat.acceleration
    fill_in "Nom voiture", with: @locations_achat.nom_voiture
    fill_in "Photo", with: @locations_achat.photo
    fill_in "Prix", with: @locations_achat.prix
    fill_in "Puissance", with: @locations_achat.puissance
    fill_in "Vitesse max", with: @locations_achat.vitesse_max
    click_on "Update Locations achat"

    assert_text "Locations achat was successfully updated"
    click_on "Back"
  end

  test "destroying a Locations achat" do
    visit locations_achats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Locations achat was successfully destroyed"
  end
end
