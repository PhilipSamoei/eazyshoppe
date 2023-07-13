class CreateWatches < ActiveRecord::Migration[7.0]
  def change
    create_table :watches do |t|
      t.references :dealer, null: false, foreign_key: true
      t.string :name
      t.string :brand
      t.decimal :price
      t.string :image_url
      t.string :year
      
      t.timestamps
    end
  end
end
