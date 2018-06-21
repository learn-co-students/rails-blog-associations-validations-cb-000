class UsersController < ActiveRecord::Base
  before_filter :set_user, only [:show, :edit, :update]
  
  
  def index 
    @users = User.all 
  end 
  
  def show 
    @user = User.find(params[:id])
  end 
  
  def new 
    @user = User.new 
  end 
  
  def create 
    @user = User.create(user_params)
    if @user.valid?
      @user.save 
      redirect_to user_path(@user)
    else 
      render :new 
    end 
  end 
  
  def edit 
  end 
  
  def update 
    @user = User.update(user_params)
    if @user.valid?
      @user.update
      redirect_to user_path(@user)
    else 
      render :edit 
    end 
  end 
  
  def destroy 
    @user.destroy
    redirect_to users_path
  end 
  
  private 
  
  def set_user 
    @user = User.find(params[:id])
  end 
  
  def user_params 
    params.require(:user).permit(:name)
  end 
  
end 
  
