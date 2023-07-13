class CreateDealers < ActiveRecord::Migration[7.0]
  def change
    create_table :dealers do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :email
      t.string :password_digest



      t.timestamps
    end
  end
end
