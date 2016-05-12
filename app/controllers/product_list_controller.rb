class ProductListController < ApplicationController
	def index
		@products = Product.all
	end
	
	def product_list
	end

end
