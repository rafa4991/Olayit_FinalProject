class AddWarrantyToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :warranty, :int
  end
end
