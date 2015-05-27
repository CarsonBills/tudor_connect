class BuildingsController < ApplicationController

  def show
    @building = Building.find(params[:id])
    @posts = Post.all
    @user = current_user
    binding.pry
  end

  def admin
    @building = Building.find(params[:id])
    @post = Post.new
  end

end