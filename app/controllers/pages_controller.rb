class PagesController < ApplicationController

	def home
		@products = Product.all
	end

	def index
	end
	
	def product_list
	end

end
