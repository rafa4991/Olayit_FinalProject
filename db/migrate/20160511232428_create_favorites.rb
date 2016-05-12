class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
    	t.integer :clinicalID
    	t.integer :productID
      	t.timestamps null: false
    end
  end
end
