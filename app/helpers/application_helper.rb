module ApplicationHelper
  def current_user
      if session[:user_id]
        @current_user ||= User.find_by(id: session[:user_id])
      end
    end
  
  def whereCondition (condition="")
    return "category=" + "\'#{condition}\'" if controller.controller_name == "category"
    return "location_name=" + "\'#{condition}\'" if controller.controller_name == "location"
    return condition
  end
  
  def full_title(page_title = '')
    base_title = "Course App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def is_admin
    # redirect_to root_path, alert: "Not authorized" if
    return (current_user.nil? or current_user.admin?)
  end

  def user_own_course
    # redirect_to root_path, alert: "Not authorized" if
    return @course.user.id == current_user.id
  end


  def can_edit_update_user
    if current_user
      return true if (params[:id] == current_user.id.to_s)
      return true if (current_user.admin == true)
    end
  end

  def can_edit_update
    if current_user
      return true if (current_user.admin == true)
      return true if (@course.user.id == current_user.id)
    end
  end
end
