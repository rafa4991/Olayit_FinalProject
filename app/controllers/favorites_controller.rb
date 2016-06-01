class FavoritesController < ApplicationController
	
	def index
		@AllProducts = Product.all
		@ProductIDs = []
		@Favorites = []
		@AllFavorites = Favorite.all
		# @Favorites = Favorite.where(userEmail: current_user.email)

		Favorite.where(userID: current_user.id) do |favorite|
			@ProductIDs << favorite.productID
		end

		@ProductIDs.each do |id|
			@currentProduct = Product.find(id)
			@Favorites.push(currentProduct)
		end



	end

	def addFavorite
		@productID = params[:productID].to_i
		@email = current_user.email
		@favorite = Favorite.create(userID: current_user.id, productID: productID, userEmail: current_user.email)

		respond_to do |format|
      		if @favorite.save
        		format.html { redirect_to '/Favorites', notice: 'Product has been added to Favorites.' }
		        format.json { render :show, status: :created, location: @favorite }
		    else
		        format.html { render :new }
		        format.json { render json: @favorite.errors, status: :unprocessable_entity }
		    end
		 end
    end


end
