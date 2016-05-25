class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.belongs_to :product, index: true
    	t.integer :clinicalID
    	t.integer :productID
    	t.integer :rating
    	t.text :content
      t.timestamps null: false
    end
  end
end
