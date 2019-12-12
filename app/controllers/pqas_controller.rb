class PqasController < ApplicationController
	def index
		@questions = @question.page(params[:page]).per(3)
	end

	def search_results
	end

	attachment :image
	acts_as_paranoid

	private
	  def pqa_params
	  	params.require(:pqa).permit(:title, :body, :profile_image)
	  end
end
