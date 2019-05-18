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
  
  def query (specModelName = "all")
    return specModelName
  end
end
