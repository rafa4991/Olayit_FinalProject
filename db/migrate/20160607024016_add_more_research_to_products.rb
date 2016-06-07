class AddMoreResearchToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :research2, :string
  	add_column :products, :research3, :string
  end
end
