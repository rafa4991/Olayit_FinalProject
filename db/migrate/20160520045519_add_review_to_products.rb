class AddReviewToProducts < ActiveRecord::Migration
  def change
    add_column :products, :review, :string
  end
end
