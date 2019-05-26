class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  include ApplicationHelper
  # GET /categories
  # GET /categories.json
  def index
    redirect_to all_courses_path
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    if !logged_in?
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    if !is_admin
      flash[:danger] = "Not authorized"
      redirect_to root_path
    end
  end

  # POST /categories
  # POST /categories.json
  def create
    if !logged_in?
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = "Category was successfully created."
      redirect_to all_courses_path
    else
      render :new
      flash[:danger] = @course.errors.full_messages
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    if !is_admin
      flash[:danger] = "Not authorized"
      redirect_to root_path
      return
    end
    if @category.update(category_params)
      flash[:success] = "Category was successfully updated."
      redirect_to admin_category_edit_path
    else
      flash[:danger] = "Something went wrong!"
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    if !is_admin
      flash[:danger] = "Not authorized"
      redirect_to root_path
    else
      @category.destroy
      flash[:success] = "Location is successfully deleted"
      redirect_to admin_category_edit_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:category_name)
    end
end
