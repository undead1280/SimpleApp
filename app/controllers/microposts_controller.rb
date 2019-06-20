class MicropostsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @micropost = @user.microposts.create(micropost_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @micropost = Micropost.find(params[:id])
    @micropost.destroy
    redirect_to user_path(@user)
  end

  private def micropost_params
    params.require(:micropost).permit(:content, :user_id, :author)
  end
end
