class FavoritesController < ApplicationController
	
	def index
		@AllProducts = Product.all
		@ProductIDs = []
		@Favorites = Favorite.where(userID: current_user.id)
		@FavoriteProducts = []
		@AllFavorites = Favorite.all
		# @Favorites = Favorite.where(userEmail: current_user.email)

		Favorite.where(userID: current_user.id) do |favorite|
			@ProductIDs << favorite.productID
		end

		@ProductIDs.each do |id|
			@currentProduct = Product.find(id)
			@FavoriteProducts.push(currentProduct)
		end



	end

	def deleteFavorite
		favorite = Favorite.where(userEmail: current_user.email, productID: params[:productID].to_i)
		user.destroy
	end

	def addFavorite
		#Favorite.create(:productID => params[:productID].to_i,
		#							   :userID => current_user.id,
		#							   :userEmail => current_user.email)
		#Favorite.create(productID: params[:productID].to_i, userID: current_user.id, userEmail:current_user.email)
		# if Favorite.exists?(userID: current_user.id, productID: params[:productID].to_i)


		newFavorite = Favorite.new
		if newFavorite.new_record?

		end
		newFavorite.userID = current_user.id
		newFavorite.productID = params[:productID].to_i
		newFavorite.userEmail = current_user.email


		newFavorite.save!
		if newFavorite.persisted?

		end
		
    end


end
