class RemoveReviewFromProducts < ActiveRecord::Migration
  def change
  	 remove_column :products, :review, :string
  end
end
