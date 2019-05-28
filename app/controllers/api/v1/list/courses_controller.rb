class Api::V1::List::CoursesController < ApiController
  def index
    @courses = Course.all
  end
end
