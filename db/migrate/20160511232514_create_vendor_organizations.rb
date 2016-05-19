class CreateVendorOrganizations < ActiveRecord::Migration
  def change
    create_table :vendor_organizations do |t|
    	t.string :name
    	t.integer :organizationID
    	t.string :address
      	t.timestamps null: false
    end
  end
end
