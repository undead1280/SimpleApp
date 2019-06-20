class UsersController < ApplicationController
  before_action :authenticate_user!

  def user_admin
    if (current_user.admin == false)
      redirect_to posts_path
    end
  end

  def destroy_multiple
    User.destroy(params[:user_ids])
    respond_to do |format|
      format.html { redirect_to home_url }
      format.json { head :no_content }
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to home_path
  end

  private def user_params
    params.require(:post).permit(:email, :updated_at, :created_at, :name)
  end
end
