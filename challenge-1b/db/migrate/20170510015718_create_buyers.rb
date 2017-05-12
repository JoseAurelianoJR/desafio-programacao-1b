class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :description
      t.float :price
      t.integer :quanity
      t.string :address
      t.string :provider

      t.timestamps null: false
    end
  end
end
