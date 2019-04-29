class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    if @user
      redirect_to @user
    else
      @user = User.new
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
