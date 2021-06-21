require "application_system_test_case"

class Location::AchatsTest < ApplicationSystemTestCase
  setup do
    @location_achat = location_achats(:one)
  end

  test "visiting the index" do
    visit location_achats_url
    assert_selector "h1", text: "Location/Achats"
  end

  test "creating a Achat" do
    visit location_achats_url
    click_on "New Location/Achat"

    fill_in "Acceleration", with: @location_achat.acceleration
    fill_in "Nom voiture", with: @location_achat.nom_voiture
    fill_in "Photo", with: @location_achat.photo
    fill_in "Prix", with: @location_achat.prix
    fill_in "Puissance", with: @location_achat.puissance
    fill_in "Vitesse max", with: @location_achat.vitesse_max
    click_on "Create Achat"

    assert_text "Achat was successfully created"
    click_on "Back"
  end

  test "updating a Achat" do
    visit location_achats_url
    click_on "Edit", match: :first

    fill_in "Acceleration", with: @location_achat.acceleration
    fill_in "Nom voiture", with: @location_achat.nom_voiture
    fill_in "Photo", with: @location_achat.photo
    fill_in "Prix", with: @location_achat.prix
    fill_in "Puissance", with: @location_achat.puissance
    fill_in "Vitesse max", with: @location_achat.vitesse_max
    click_on "Update Achat"

    assert_text "Achat was successfully updated"
    click_on "Back"
  end

  test "destroying a Achat" do
    visit location_achats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Achat was successfully destroyed"
  end
end
