class AddPhotoVoitureToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :photo_voiture, :string
  end
end
