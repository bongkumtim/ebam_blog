class PostsController < ApplicationController
	before_action :authenticate_user!

	def index
		@posts = Post.all.order(created_at: :desc)
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		if @post.save
		   redirect_to @post
		else
			render "new"
		end
	end

	def update
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to root_path
	end

	def melab
		redirect_to "http://www.melab.cf"
	end

	def fb
		redirect_to "https://www.facebook.com/eBusinessAssociationMalaysia"
	end

	def web
		redirect_to "http://www.ebusiness.org.my"
	end


	private

	def post_params
		params.require(:post).permit(:title,:content)
	end
end
