class PostsController < ApplicationController

  def new
    @post = Post.new(surf_spot_id: params[id])
  end

  def create
    @spot = SurfSpot.find(params[:id])
    @post = @spot.posts.create(post_params)
    @post.user_id = current_user.id #or whatever is you session name
    if @post.save
      redirect_to @spot
    else
      flash.now[:danger] = "error"
    end

  end


  private
  def post_params
    params.require(:post).permit(:user_id, :id, :content)
  end

end
