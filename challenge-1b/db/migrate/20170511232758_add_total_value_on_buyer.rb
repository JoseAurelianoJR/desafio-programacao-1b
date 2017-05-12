class AddTotalValueOnBuyer < ActiveRecord::Migration
  def change
    add_monetize :buyers, :total
  end
end
