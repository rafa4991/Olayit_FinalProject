class AddVendorUsersIdToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :vendor_user_id, :int
  end
end
