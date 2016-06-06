class RemoveVendorIdFromProducts < ActiveRecord::Migration
  def change
  	remove_column :products, :vendorID, :string
  end
end
