class UserController < ApplicationController
  def index
  end

  def show
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end  
  
  def edit
    @User = User.find(params[:id])
  end  
  
  
  
end
