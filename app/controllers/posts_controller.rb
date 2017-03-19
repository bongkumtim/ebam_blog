class PostsController < ApplicationController
	before_action :authenticate_user!
	before_action :find, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.all.order(created_at: :desc)
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post = current_user.posts.build(post_params)
		if @post.save
		   redirect_to @post
		else
			render "new"
		end
	end

	def edit
	end

	def update
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
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

	def find
		@post = Post.find(params[:id])
	end

end
