class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	#t.integer :id
      #t.integer :vendorID
    	t.string :name
      t.string :type
    	t.float :price
    	t.text :description
    	t.string :image
      t.timestamps null: false
    end
  end
end
