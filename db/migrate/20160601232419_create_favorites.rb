class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
    	t.integer :productID
    	t.integer :userID
    	t.string  :userEmail
      	t.timestamps null: false
    end
  end
end
