class CommentsController < ApplicationController

  def create
    if Comment.create(comment_params)
      redirect_to prototype_path(params[:prototype_id])
     else
      render prototype_path(params[:prototype_id])
     end
  end


 private
 def comment_params
   params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
 end

end