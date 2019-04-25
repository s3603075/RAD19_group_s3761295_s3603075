module LocationHelper
  def locationPath(loc)
    return eval("location_loc#{loc}_path")
  end
end
