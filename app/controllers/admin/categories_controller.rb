class Admin::CategoriesController < ApplicationController

	def new
		@categorie = Categorie.new
	end

	def create
		@categorie = Categorie.new(categorie_params)
    if @categorie.save
    redirect_to new_admin_category_path
    else
      redirect_to new_admin_category_path
    end
  end

	def update
	end

	def edit
	end

	def destroy
	end

	private
	def categorie_params
    params.require(:categorie).permit(:name)
  end
end

