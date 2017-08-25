class PostController < ApplicationController
  def index
    @read_post= Post.all.reverse
  end
  
  def new
    create_post= Post.new
    create_post.title = params[:title]
    create_post.content = params[:content]
    create_post.save
    
    redirect_to '/'
  end
  
  def delete
    delete_post = Post.find(params[:id])
    delete_post.delete
    
    redirect_to '/'
  end
  
  def find_update_post
    @post = Post.find(params[:id])
  end
  
  def update
    update_post = Post.find(params[:id])
    update_post.title = params[:title]
    update_post.content = params[:content]
    update_post.save
    
    redirect_to '/'
  end
end
