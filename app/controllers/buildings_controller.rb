class BuildingsController < ApplicationController

  def show
    @building = Building.find(params[:id])
    @posts = Post.where(building_id: params[:id]).order(created_at: :desc)
    @user = current_user
  end

  def admin
    @building = Building.find(params[:id])
    @post = Post.new
  end

end