class FavoritesController < ApplicationController
	
	def index
		@message = ""
		#########Add Favorites Logic (start)##############
		if !params[:add].nil?
			if Favorite.where(userID: current_user.id, productID: params[:productID].to_i).present?
				@message = "Product already in Favorites."
			else
				Favorite.create(productID: params[:productID].to_i, userID: current_user.id, userEmail:current_user.email)
				addedProduct = Product.find_by(id: params[:productID].to_i)
				@message = '"' + addedProduct.name + '" has been added to Favorites.'

			end
		end
		#########Add Favorites Logic (end)##############

		#########Delete Favorites Logic (start)##############
		if !params[:delete].nil?
			deletedProduct = Product.find_by(id: params[:productID].to_i)
			favorite = Favorite.find_by(userEmail: current_user.email, productID: params[:productID].to_i)
			favorite.destroy
			@message = '"' + deletedProduct.name + '" has been removed from Favorites.'
		end
		#########Delete Favorites Logic (end)##############

		@reviews = Review.all
		@AllProducts = Product.all
		@ProductIDs = []
		@Favorites = Favorite.where(userID: current_user.id)
		@FavoriteProducts = []
		@AllFavorites = Favorite.all
		# @Favorites = Favorite.where(userEmail: current_user.email)

		Favorite.where(userID: current_user.id).each do |favorite|
			@ProductIDs.push(favorite.productID)
		end

		@ProductIDs.each do |id|
			currentProduct = Product.find(id)
			@FavoriteProducts.push(currentProduct)
		end



	end

	def deleteFavorite
		favorite = Favorite.find_by(userEmail: current_user.email, productID: params[:productID].to_i)
		favorite.destroy
	end

	def addFavorite
		Favorite.create(:productID => params[:productID].to_i, :userID => current_user.id, :userEmail => current_user.email)
		
		Favorite.create(productID: params[:productID].to_i, userID: current_user.id, userEmail:current_user.email)
		
		# if Favorite.exists?(userID: current_user.id, productID: params[:productID].to_i)

		@favorite = Favorite.new
		@favorite.productID = params[:productID].to_i
		@favorite.userID = current_user.id
		@favorite.userEmail = current_user.email
		@favorite.save


	
    end


end
