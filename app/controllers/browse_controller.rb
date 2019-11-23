class BrowseController < ApplicationController

  def browse
    @users = User.where.not(id: current_user.id)
  end

  def approve
    # logger.debug "User id for matching is #{params[:id]}"
    # user_id = params[:id]
    # new_like = Like.new(liked_user_id: user_id)
    # new_like.user_id = current_user.id
    # if new_like.save
    # existing_like = Like.where(user_id: user_id, liked_user_id: current_user.id)
    # @they_like_us = existing_like > 0
    # else

    # end
  end

  def decline

  end

end
