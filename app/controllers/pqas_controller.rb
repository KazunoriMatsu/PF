class PqasController < ApplicationController


	def index
		@questions = Question.page(params[:page]).per(3)
		@posts = Post.page(params[:page]).per(3)
		respond_to do |format|
      format.html
      format.js
    end

	end

	def search_results
	end



	private
	 	def pqa_params
	  	params.require(:pqa).permit(:title, :body, :profile_image)
	  end

		def question_params
			params.require(:question).permit(:customer_id, :title, :body, :status, :categorie_id)
	  end

end
