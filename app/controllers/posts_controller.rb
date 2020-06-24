class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new

  end
  
  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])

    redirect_to posts_path
  end
end


# Form for raw html 
# <form>
#   <label>Post title:</label><br>
#   <input type="text" id="post_title" name="post[title]"><br>
 
#   <label>Post description:</label><br>
#   <textarea id="post_description" name="post[description]"></textarea><br>
 
#   <input type="submit" value="Submit Post">
# </form>
 
# <%= params.inspect %>