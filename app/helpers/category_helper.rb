module CategoryHelper
  
  def categoryPath(loc)
    return eval("category_#{loc}_path")
  end
  
  def locationPath(loc)
    return eval("location_loc#{loc}_path")
  end
  
end
