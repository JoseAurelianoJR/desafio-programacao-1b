class ChangePriceColumnDataType < ActiveRecord::Migration
  def change
    remove_column :buyers, :price, :float
    add_monetize :buyers, :price
  end
end
