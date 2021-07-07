class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :qui_sommes_nous]

  def home
  end

  def qui_sommes_nous
  end

  def acheter_une_voiture
    @locations_achats = LocationsAchat.all
    @products = Product.all
  end

  def louer_une_voiture
    @locations_achats = LocationsAchat.all
    @products = Product.all
  end

  def vendre_une_voiture
    @locations_achats = LocationsAchat.all
  end

  def ferrari
  end

  def mon_panier
  end

  def lamborghini
  end

  def gestion_voiture
  end

  def mon_compte
  end

end
