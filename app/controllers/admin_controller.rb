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
  
  def resetvotes
    @course = Course.find(params[:course])
    Like.where('course_id = ?', @course.id).destroy_all
    @course.update(liked: 0, disliked: 0)
    
    redirect_to admin_course_edit_path
  end

end
