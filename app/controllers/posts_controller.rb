class PostsController < ApplicationController
	before_action :find_post, only: [:show,:edit,:update,:destroy]

	def index
		@posts = Post.all.order("created_at Desc").paginate(page: params[:page], per_page: 5)	 
	end
	def new
		@post =Post.new
	end
	def create
		@post = Post.new post_params

		if @post.save
			redirect_to @post, notice: "Destryoing world in 3...2...1,just kidding, your article was successfully published!"
		else
			render 'new', notice: 'Sorry dude, your post didnt save'
		end	
	end
	def show
		
	end

	def edit

	end

	def update
		if @post.update post_params
			redirect_to @post, notice:"Phew! Your article was successfully saved!"
		else
			render 'edit'
		end

	end
	def destroy
		@post.destroy
		redirect_to posts_path
	end

	private

		def post_params
			params.require(:post).permit(:title,:content,:slug)
		end

		def find_post
			@post = Post.friendly.find(params[:id])
		end
end
