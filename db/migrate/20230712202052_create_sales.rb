class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :dealer, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.references :watch, null: false, foreign_key: true
      t.date :sale_date
      t.integer :sale_quantity

      t.timestamps
    end
  end
end
