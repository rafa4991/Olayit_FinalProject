class AddDepthToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :depth, :int
  end
end
