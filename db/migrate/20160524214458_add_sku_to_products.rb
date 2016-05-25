class AddSkuToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :SKU, :integer
  end
end
