class PostController < ApplicationController
  def index
    @read_post= Post.all
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
end
