class RenamingColumnQuanityToQuantity < ActiveRecord::Migration
  def change
    rename_column :buyers, :quanity, :quantity
  end
end
