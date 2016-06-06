class AddVendorIdToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :vendorID, :int
  end
end
