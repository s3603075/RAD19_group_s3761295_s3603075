class AdminController < ApplicationController
  helper_method :reset_votes
  def reset_votes course
    course.votes_for.voters.each { |u| course.unvote_by u }
    # respond_to do |format|
    #   format.html { redirect_to root_path, notice: "Course was successfully destroyed." }
    #   format.json { head :no_content }
    # end
    #         course.get_downvotes.size
    #         course.get_upvotes.size
  
  end
end
