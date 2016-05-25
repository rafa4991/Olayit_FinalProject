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
    	else

	      		
	    end

	end

end
