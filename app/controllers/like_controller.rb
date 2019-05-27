class LikeController < ApplicationController
  def like
    session[:return_to] ||= request.referer
    
    @course = Course.find(params[:course])
    
    if Like.where("user_id = ? AND course_id = ?", current_user.id, @course.id).present?
      flash[:danger] = "You can only vote on a course once!"
    else
      @like = Like.create(user_id: current_user.id, course_id: @course.id)
      @course = @course.increment(:liked, 1)
      @course.save
    end
    
    redirect_to session.delete(:return_to)
    
  end
  
  def dislike
    session[:return_to] ||= request.referer
    
    @course = Course.find(params[:course])
    
    if Like.where("user_id = ? AND course_id = ?", current_user.id, @course.id).present?
      flash[:danger] = "You can only vote on a course once!"
    else
      @like = Like.create(user_id: current_user.id, course_id: @course.id)
      @course = @course.increment(:disliked, 1)
      @course.save
    end
    
    redirect_to session.delete(:return_to)
    
  end
end
