class CatalogController < ApplicationController

  def catalog
     @products = Product.order(:title)
  end

end
