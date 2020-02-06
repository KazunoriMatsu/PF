class AnswersController < ApplicationController

	def new
		# @question = Question.find(params[:id])
		@answer = Answer.new
	end

	def create
		@answer = Answer.new(answer_params)
		@answer.customer_id = current_customer.id
  	if @answer.save
  		flash[:notice] = "質問を作成しました。"
			redirect_to root_path
		else
			render :new
		end
	end

	def show
		@answer = Answer.find(params[:id])
	end


	private

	def answer_params
		params.require(:answer).permit(:customer_id, :question_id, :body)
  end

  def question_params
		params.require(:question).permit(:customer_id, :title, :body, :status, :categorie_id)
  end
end
