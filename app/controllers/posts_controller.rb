class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    Post.create(
      image_url: params[:image_url],
      story: params[:story]
      )
      redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(
      image_url: params[:image_url],
      story: params[:story]
    )
    redirect_to post_path(@post.id)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end
  
  def new_tag

    # @tag1 = params[:tag][0]
    
    
  end
  
  def create_tag
    # @tag1 = params[:tag1]
    # @tag2 = params[:tag2]
    # @tag3 = params[:tag3]
    # @tag4 = params[:tag4]    
  end
end
