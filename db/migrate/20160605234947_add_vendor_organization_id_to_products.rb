class AddVendorOrganizationIdToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :vendor_organization_id, :int
  end
end
