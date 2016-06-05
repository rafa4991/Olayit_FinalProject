class AddResearchToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :research, :string
  end
end
