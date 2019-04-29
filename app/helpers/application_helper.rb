module ApplicationHelper
  def whereCondition (condition="")
    return "category=" + "\'#{condition}\'" if controller.controller_name == "category"
    return "location_name=" + "\'#{condition}\'" if controller.controller_name == "location"
    return condition
  end
  def likeCourse(courseID)
    rate = Rate.find(courseID) #course_id equevlant to course.id because rate.id(1) has course_id(1)and so on
    puts "hello"
    counter = rate.like
    counter =+ 1
    rate.update(like: counter)
    return rate.like
  end
  def likeCourse courseID
    rate = Rate.find(courseID)
    counter = rate.dislike
    if counter > 0
      counter =- 1
    end
    rate.update(dislike: counter)
  end
end
