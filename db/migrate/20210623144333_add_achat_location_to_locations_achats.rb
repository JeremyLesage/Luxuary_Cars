class AddAchatLocationToLocationsAchats < ActiveRecord::Migration[6.1]
  def change
    add_column :locations_achats, :achat_location, :boolean
  end
end
