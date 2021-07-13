class AddInfosToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :h_f, :boolean
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :numero_de_telephone, :string
    add_column :users, :adresse_postale, :string
  end
end
