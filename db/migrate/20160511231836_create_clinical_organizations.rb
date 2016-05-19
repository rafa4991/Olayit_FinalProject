class CreateClinicalOrganizations < ActiveRecord::Migration
  def change
    create_table :clinical_organizations do |t|

    	t.string :name
    	t.integer :size
    	t.string :address
      	t.timestamps null: false
    end
  end
end
