class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  include ApplicationHelper
  # GET /locations
  # GET /locations.json
  def index
    redirect_to all_courses_path
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    if !logged_in?
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
    if !logged_in?
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
  end

  # POST /locations
  # POST /locations.json
  def create
    if !logged_in?
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
    @location = Location.new(location_params)
    if @location.save
      flash[:success] = "Location was successfully created."
      redirect_to all_courses_path
    else
      render :new
      flash[:danger] = @course.errors.full_messages
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    if !is_admin
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
    if @location.update(location_params)
      flash[:success] = "Location was successfully updated."
      redirect_to admin_location_edit_path
    else
      flash[:danger] = "Something went wrong!"
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    if !is_admin
      flash[:danger] = "Not authorized"
      redirect_to root_path
    else
      @location.destroy
      flash[:success] = "Location is successfully deleted"
      redirect_to admin_location_edit_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:location_name)
    end
end
