class PqasController < ApplicationController


	def index
		@questions = Question.page(params[:page]).per(3)

	end

	def search_results
	end

	# attachment :image
	# acts_as_paranoid

	private
	 	def pqa_params
	  	params.require(:pqa).permit(:title, :body, :profile_image)
	  end

		def question_params
			params.require(:question).permit(:customer_id, :title, :body, :status, :categorie_id)
	  end
end
