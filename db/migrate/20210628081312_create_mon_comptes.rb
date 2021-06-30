class CreateMonComptes < ActiveRecord::Migration[6.1]
  def change
    create_table :mon_comptes do |t|
      t.boolean :h_f
      t.string :nom
      t.string :prenom
      t.string :numéro_tel
      t.string :adress
      t.string :photo

      t.timestamps
    end
  end
end
