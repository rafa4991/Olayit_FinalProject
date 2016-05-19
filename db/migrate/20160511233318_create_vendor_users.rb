class CreateVendorUsers < ActiveRecord::Migration
  def change
    create_table :vendor_users do |t|
    	t.string :name
      t.integer :ein
    	t.string :username
    	t.string :password
    	t.string :email
    	t.string :role
      t.string :telephone
    	t.integer :organizationID
      t.timestamps null: false
    end
  end
end
