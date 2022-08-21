class UserController < ApplicationController
  def index
  end

  def show
  end
  
  def update
    @user = User.find(params[:id])
    @user.user_id=current_user.id
    if @user.save
      redirect_to user_path(user.id)
    else
      render :edit
    end  
  end  
  
  def edit
    @User = User.find(params[:id])
  end  
  
  
  
end
