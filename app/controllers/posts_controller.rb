class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :approve]
  def index
    if current_user.type == 'Employee'
      @posts = Post.posts_by current_user
    else
      @posts = Post.all
    end
  end
  def new
    @post = Post.new
  end

  def approve
    authorize @post
    @post.approved!
		redirect_to root_path, notice: 'Post was approved'
  end

  def edit
    authorize @post
  end

  def update
    authorize @post
    if @post.update(post_params)
			redirect_to @post
		else
			render :edit
		end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy 
    @post.destroy
    redirect_to posts_path, notice: 'Post was deleted'
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
			redirect_to @post, notice: 'Your post was created successfully'
		else
			render :new
		end
  end

  private
  def post_params 
    params.require(:post).permit(:date, :rationale, :status, :overtime_hours)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
