class BrowseController < ApplicationController

  def browse
    @users = User.all
  end

  def approve
  end

  def decline
  end

end
