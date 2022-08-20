class UserController < ApplicationController
  def index
  end

  def show
  end
  
  def edit
    @User = User.find(params[:id])
  end  
  
end
