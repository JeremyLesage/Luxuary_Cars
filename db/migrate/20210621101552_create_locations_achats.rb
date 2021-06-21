class CreateLocationsAchats < ActiveRecord::Migration[6.1]
  def change
    create_table :locations_achats do |t|
      t.string :nom_voiture
      t.integer :vitesse_max
      t.integer :acceleration
      t.integer :puissance
      t.integer :prix
      t.string :photo

      t.timestamps
    end
  end
end
