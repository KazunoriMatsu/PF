class FavoritesController < ApplicationController
	def index
		@customer = Customer.find(params[:customer_id])
		@favorites = @customer.favorites.includes(:product).page(params[:page]).per(10)
	end
end
