class PrototypesController < ApplicationController
  before_action :authenticate_user!

  def index
    @prototypes = Prototype.all
    

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

  def show
    @prototype = Prototype.find(params[:id])
  end

  def edit
    @prototype = Prototype.find(params[:id])
  end

  def update
    prototype = Prototype.find(params[:id])
    prototype.update(prototype_params)

    if prototype.update(prototype_params)
      redirect_to prototype_path(prototype.id)
    else
      #  どうしてedit_prototype_pathはだめなのだろう。。。
      render :edit
    end

  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy

    redirect_to root_path

  end


  private
  def prototype_params
    params.require(:prototype).permit(:title, :cath_copy, :concept, :image).merge(user_id: current_user.id)
  end
  
  
end


