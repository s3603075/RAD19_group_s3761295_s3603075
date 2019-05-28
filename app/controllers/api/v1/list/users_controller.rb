class Api::V1::List::UsersController < ApiController
  def index
    @users = User.all
  end
end
