class Api::V1::CoursesController < ApiController
  before_action :set_course
  def show
  end

  private
  def set_course
    @course = Course.find(params[:id])
  end
end
