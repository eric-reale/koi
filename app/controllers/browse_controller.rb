class BrowseController < ApplicationController

  def browse
    ## Search Like model for current user, and creating an array mapping the ids of each of the persons they've already liked.
    liked_account_ids = Like.where(user_id: current_user.id).map(&:liked_user_id)
    liked_account_ids << current_user.id
    @users = User.where.not(id: liked_account_ids)

    # Returns list of users where there's a match. Calls on matches method in User model.
    @matches = current_user.matches
  end

  def approve
    # logger.debug "User id for matching is #{params[:id]}"
    user_id = params[:id]

    new_like = Like.new(liked_user_id: user_id)
    new_like.user_id = current_user.id

    if new_like.save
    existing_like = Like.where(user_id: user_id, liked_user_id: current_user.id).count
    @they_like_us = existing_like > 0
    else

    end
  end

  def decline

  end

end
