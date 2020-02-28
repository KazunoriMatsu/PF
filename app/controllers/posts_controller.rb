class PostsController < ApplicationController

def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.customer_id = current_customer.id

  	if @post.save
  		flash[:notice] = "質問を作成しました。"
			redirect_to root_path
		else
			render :new
		end
	end

	def show
		@post = Post.find(params[:id])
		@customer = @post.customer
	end

	def destroy
		@post = Post.find(params[:id])
      if @post.customer.id == current_customer.id
      	@post.destroy
		    redirect_to root_path
      end
  end



	private
		def post_params
			params.require(:post).permit(:title, :body, :image, :categorie_id, :favorite_count, :customer_id)
		end

end
