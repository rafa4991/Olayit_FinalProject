class AddToProducts < ActiveRecord::Migration
  def change
    add_column :products, :vendorID, :int
  end
end
