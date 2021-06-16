class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def qui_sommes_nous
  end

  def acheter_une_voiture
  end

  def louer_une_voiture
  end

  def vendre_une_voiture
  end

end
