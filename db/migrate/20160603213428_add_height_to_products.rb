class AddHeightToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :height, :int
  end
end
