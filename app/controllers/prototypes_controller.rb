class PrototypesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @prototype = Prototype.new
  end

  def create
    if Prototype.create(prototype_params)
     redirect_to root_path
    else
     render new_prototype_path
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :cath_copy, :concept, :image).merge(user_id: current_user.id)
  end
  
  
end


