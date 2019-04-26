module ApplicationHelper
  def whereCondition (condition="")
    return "category=" + "\'#{condition}\'" if controller.controller_name == "category"
    return "location_name=" + "\'#{condition}\'" if controller.controller_name == "location"
    return condition
  end

end
