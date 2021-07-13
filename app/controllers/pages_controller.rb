class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :qui_sommes_nous, :acheter_une_voiture]

  def home
  end

  def qui_sommes_nous
    @contact = Contact.new
  end

  def acheter_une_voiture
    @locations_achats = LocationsAchat.all
    @products = Product.all
  end

  def louer_une_voiture
    @locations_achats = LocationsAchat.all
    @products = Product.all
  end

  def ferrari
  end

  def lamborghini
  end

  def mon_compte
  end

  def message
    @contacts = Contact.all
  end

end
