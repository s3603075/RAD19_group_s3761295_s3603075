class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def is_admin
    # redirect_to root_path, alert: "Not authorized" if
    return (current_user.nil? or current_user.admin?)
  end

  def user_own_course
    # redirect_to root_path, alert: "Not authorized" if
    return @course.user.id == current_user.id
  end

  def can_edit_update
    if current_user
      return true if (current_user.admin == true)
      return true if (@course.user.id == current_user.id)
    end
  end

  def can_edit_update_user
    if current_user
      return true if (params[:id] == current_user.id.to_s)
      return true if (current_user.admin == true)
    end
  end

end
