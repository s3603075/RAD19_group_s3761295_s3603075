class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
  helper :all

=======
  include SessionsHelper
>>>>>>> af19f64354e0c34d0ecea9e9f3afa085ae05337f
end
