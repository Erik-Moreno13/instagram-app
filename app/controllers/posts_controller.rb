class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  # GET users/1/posts
  def index
    @posts = @user.posts.order(created_at: :desc)
    @fol = @user.followers.where(follower: current_user)
  end

  # GET users/1/posts/1
  def show

  end

  # GET users/1/posts/new
  def new
    @post = @user.posts.build
  end

  # GET users/1/posts/1/edit
  def edit
  end

  # POST users/1/posts
  def create
    @post = @user.posts.build(post_params)

    if @post.save
      redirect_to(root_path, notice: 'Post was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/posts/1
  def update
    if @post.update_attributes(post_params)
      redirect_to([@post.user, @post], notice: 'Post was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/posts/1
  def destroy
    @post.destroy

    redirect_to user_posts_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_post
      @post = @user.posts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:description, :user_id, :image)
    end
end
