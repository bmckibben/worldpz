class UsersController < ApplicationController
  before_filter :authenticate_user!
  #after_action :verify_authorized
  
  def index
    @users = User.all
    #authorize User ##pundit thing
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user or @current_user.admin?
     redirect_to :back, :alert => "Access denied."
    end
    #authorize @user  ##pundit thing
  end

  def update
    @user = User.find(params[:id])
    #authorize @user  ##pundit thing
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    authorize user
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def secure_params
    params.require(:user).permit(:role_cd, :name)
  end

end