class AddProductsToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :puissance, :decimal
    add_column :products, :vitesse_max, :decimal
    add_column :products, :Acceleration, :decimal
  end
end
