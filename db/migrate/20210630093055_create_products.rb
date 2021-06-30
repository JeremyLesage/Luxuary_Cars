class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 6, scale: 2
      t.string :image_url

      t.timestamps
    end
  end
end
