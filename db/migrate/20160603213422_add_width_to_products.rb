class AddWidthToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :width, :int
  end
end
