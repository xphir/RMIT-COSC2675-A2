class DownvotesController < ApplicationController
  before_action :logged_users_only

  def new
    course = Course.find_by_id(params[:id])
    condition = { user_id: current_user.id, course_id: params[:id] }

    # If upvote exists
    if Downvote.exists?(condition)
      flash[:danger] = "You have already downvoted for #{course.name} course."
      redirect_back(fallback_location: root_path)
    elsif Upvote.exists?(condition)
      # Should check if there is a way to swap the votes around
      flash[:danger] = "You have already voted for #{course.name} course."
      redirect_back(fallback_location: root_path)
    else
      # Add upvote to DB
      course.downvotes << Downvote.create(user_id: current_user.id, course_id: course.id)
      flash[:success] = "Successfully downvoted for #{course.name} course."
      redirect_back(fallback_location: root_path)
    end
  end
end