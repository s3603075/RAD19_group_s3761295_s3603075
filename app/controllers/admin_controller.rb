class AdminController < ApplicationController
  include ApplicationHelper
  def course
    if !is_admin
      flash[:danger] = "Not Authorized!"
      redirect_to root_path
    end
  end

  def coordinator
    if !is_admin
      flash[:danger] = "Not Authorized!"
      redirect_to root_path
    end
  end

  def location
    if !is_admin
      flash[:danger] = "Not Authorized!"
      redirect_to root_path
    end
  end

  def category
    if !is_admin
      flash[:danger] = "Not Authorized!"
      redirect_to root_path
    end
  end

end
