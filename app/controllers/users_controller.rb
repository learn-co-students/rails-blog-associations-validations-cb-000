class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :delete]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def get_user
    @user = User.find(params[:id])
  end
end
