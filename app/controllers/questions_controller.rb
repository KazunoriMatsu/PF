class QuestionsController < ApplicationController

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		@question.customer_id = current_customer.id
  	if @question.save
  		flash[:notice] = "質問を作成しました。"
			redirect_to root_path
		else
			@questions = Question.all
			render :new
		end
	end

	def show
		@question = Question.find(params[:id])
		@answer = Answer.new
	end

	def destroy
		@question = Question.find(params[:id])
    if @question.customer.id == current_customer.id
    	@question.destroy
    else
    	redirect_to root_path
    end
  end

	private

	def question_params
		params.require(:question).permit(:customer_id, :title, :body, :status, :categorie_id)
  end

end
