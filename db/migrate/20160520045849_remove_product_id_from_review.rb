class RemoveProductIdFromReview < ActiveRecord::Migration
  def change
    remove_column :reviews, :productID, :int
  end
end
