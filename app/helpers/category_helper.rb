module CategoryHelper
  
  def categoryPath(loc)
    return eval("category_#{loc}_path")
  end
  
end
