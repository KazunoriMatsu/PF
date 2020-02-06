class AnswersController < ApplicationController

	def create
		@question = Question.find(params[:question_id])
		@answer = Answer.new(answer_params)
		@answer.customer_id = current_customer.id
		@answer.question_id = @question.id
  	if @answer.save
  		flash[:notice] = "質問を作成しました。"
			redirect_to question_path(@question.id)
		else
			render "questions/show"
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
