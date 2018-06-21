class TagsController < ActiveRecord::Base
  before_filter :set_tag, only [:show, :edit, :update]
  
  
  def index 
    @tags = Tag.all 
  end 
  
  def show 
    @tag = Tag.find(params[:id])
  end 
  
  def new 
    @tag = Tag.new 
  end 
  
  def create 
    @tag = Tag.create(tag_params)
    if @tag.valid?
      @tag.save 
      redirect_to tag_path(@tag)
    else 
      render :new 
    end 
  end 
  
  def edit 
  end 
  
  def update 
    @tag = Tag.update(tag_params)
    if @tag.valid?
      @tag.update
      redirect_to tag_path(@tag)
    else 
      render :edit 
    end 
  end 
  
  def destroy 
    @tag.destroy
    redirect_to tags_path
  end 
  
  private 
  
  def set_tag 
    @tag = Tag.find(params[:id])
  end 
  
  def tag_params 
    params.require(:tag).permit(:name, :post_id, :user_id)
  end 
  
end 
  
