class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  #before_filter :authorize, except: [:new, :create]
  #before_filter :check_admin, only: [:new, :create]

  # GET /users/1
  # GET /users/1.json
  def show
    @user = current_user
    if @user.building_id == 1
      @buildings = Building.all
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  # POST /users.json
  def create
    if params[:user]
      @user = User.create(user_params)
    else
      @user = User.create(username: params[:username], password: params[:password])
    end
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to @user }
      else
        format.html { render :new }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url  }
      format.json { head :no_content }
    end
  end

  def edit
  end

  def reset
  end

  def forgot_password
    @user = User.find_by_email(params[:email])
    random_password = Array.new(10).map { (65 + rand(58)).chr }.join
    @user.password = random_password
    @user.save!
    #UserMailer.password_reset(@user, random_password).deliver
    flash[:notice] = "Email with new password sent"
    redirect_to root_path
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render action: "edit"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :email, :building_id)
    end

end
