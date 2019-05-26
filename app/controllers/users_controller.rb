class UsersController < ApplicationController
  include ApplicationHelper
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

  def edit
    if  !can_edit_update_user
      flash[:danger] = "Not authorized"
      redirect_to root_path
    end
    @user = helpers.current_user
  end

  def update
    if  !can_edit_update_user
      flash[:danger] = "Not authorized"
      redirect_to root_path
    end
    @user = helpers.current_user
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    if !is_admin
      flash[:danger] = "Not authorized"
      redirect_to root_path
    else
      @user = User.find(params[:id])
      @user.destroy
      flash[:success] = "User is successfully deleted"
      redirect_to admin_coordinator_edit_path
    end
  end
  
  def edit
    @user = helpers.current_user
  end
  
  def update
    @user = helpers.current_user
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
