class AddBooleanToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :loc_achat, :boolean
  end
end
