class PostsController < ApplicationController

def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
  	if @post.save
  		flash[:notice] = "質問を作成しました。"
			redirect_to root_path
		else
			@posts = Question.all
			render :new
		end
	end

	def show
		@post = Post.find(params[:id])
	end


	private
		def post_params
			params.require(:post).permit(:title, :body, :image_id, :categorie_id, :favorite_count, :customer_id)
	end


end
