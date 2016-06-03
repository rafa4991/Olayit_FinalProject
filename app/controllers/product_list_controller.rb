class ProductListController < ApplicationController
	#helper_method :sort_column, :sort_direction

	def index
		@products = Product.all
		@reviews = Review.all

		#Logic for the simple SearchBar
		@order="asc"

    	if !params[:search].nil?
	     	
		   	@searchinput = params[:search]
		   	@searchcriteria="%#{params[:search]}%" 
	      	@products = Product.where("name like ?",@searchcriteria)
	    end

	    #Logic for advanced options
	    if !params[:order].nil?
	    	@order = params[:order]
		   	@ordercriteria="%#{params[:order]}%"
		   	if @ordercriteria == "asc"
		   		
		   	else

		   	end
	    end
	    if !params[:sort].nil?
	    	@sort = params[:sort]
		   	@sortcriteria="#{params[:sort]}"

	    end
	    if !params[:filter].nil?
	    	@filter = params[:filter]
		   	@filtercriteria="#{params[:filter]}"
	    end

    	if !params[:order].nil? && !params[:sort].nil? && !params[:filter].nil?

    			#@products = Product.where("name = ? AND locked = ?", params[:orders], false)
    			@products = Product.order(@sortcriteria).limit(@filtercriteria)

    			#.where("orders_count = ? AND locked = ?", params[:orders], false)
    			#@products = Product.find(:all, :order => @sortcriteria, :limit => 100)
	    end

	    ##############SIDEBAR FILTER LOGIC######################

	    if !params[:priceRange].nil?
			priceRange = params[:priceRange].to_s
			high = 0
			low = 0
			if priceRange == "1"
				high = 1000
			elsif priceRange == "2"
				high = 2000
				low = 1000
			elsif priceRange == "3"
				high = 3000
				low =2000
			elsif priceRange == "4"
				high = 4000
				low = 3000
			elsif priceRange == "5"
				high = 5000
				low = 4000
			else
				low = 5000
			end 

			if high == 0 && low != 0
				@products = @products.where("price >= ?", low)
			else
				@products = @products.where("price <= ? AND price >= ?", high, low)
			end
			
		end

	end

	def filter


	end

end
