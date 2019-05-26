class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  include SessionsHelper

  def not_found
    flash[:danger] = "Page/Action not found!"
    render 'error_pages/404'
  end

end
