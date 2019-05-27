class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  include ApplicationHelper
  require 'aws-sdk-s3'
  # before_action :is_admin, only: [:new, :edit, :update, :destroy]
  # before_action :user_own_course, only: [:edit, :update]

  # GET /courses
  # GET /courses.json
  def index
    redirect_to all_courses_path
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
  end

  # GET /courses/new
  def new
    if !logged_in?
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit

    if !can_edit_update
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
    # @user = helpers.current_user
    # @course = Course.find(params[:id])
    #
    # if @user.id == @course.user_id
    #   permitted_columns = params.permit(:course_name, :prerequisite, :description)
    #   @course.update_attributes(permitted_columns)
    #   redirect_back fallback_location: root_path
    # end
  end


  # POST /courses
  # POST /courses.json
  def create
    if !logged_in?
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end

    file_name = "#{@picture}"
    upload_file = "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}/#{@picture}"

# Create an instance of the Aws::S3::Resource class
    s3 = Aws::S3::Resource.new(region:'ap-southeast-2')
# Reference the target object by bucket name and key.
# Objects live in a bucket and have unique keys that identify the object.
    obj = s3.bucket('course-app').object(file_name)
    obj.upload_file(upload_file, { acl: 'public-read' })  # http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html

# Returns Public URL to the file
    obj.public_url
    #
    # obj = s3.bucket('course-app').object("#{params[:picture]}")
    # obj.upload_file("Uploads/#{params[:picture]}")
    # @course = Course.new(course_params)
    # @course.user_id = current_user.id

      if @course.save
        flash[:success] = "Course was successfully created."
        redirect_to course_path(@course.id)
      else
        render :new
        # format.json { render json: @course.errors, status: :unprocessable_entity }
        flash[:danger] = @course.errors.full_messages
        # @course.errors.each {|e| flash.now[:danger] = e}
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    if !can_edit_update
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
    if @course.update(course_params)
      flash[:success] = "Course was successfully updated."
      redirect_to course_path(@course.id)
    else
      flash[:danger] = "Something went wrong!"
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    if !is_admin
      flash[:danger] = "Not authorized"
      redirect_to root_path
    else
      @course.destroy
      flash[:success] = "Course is successfully deleted"
      redirect_to admin_course_edit_path
    end
  end

  def upvote
    @course = Course.find(params[:id])
    if !@course.voted_up_by?(current_user)
      @course.upvote_by current_user
    else
      flash[:danger] = 'You can only vote up a course once!'
    end
    redirect_back fallback_location: root_path
  end

  def downvote
    @course = Course.find(params[:id])
    if !@course.voted_down_by?(current_user)
      @course.downvote_by current_user
    else
      flash[:danger] = 'You can only vote down a course once!'
    end
    redirect_back fallback_location: root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
      @picture = Course.find(params[:picture])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit!
    end
end
