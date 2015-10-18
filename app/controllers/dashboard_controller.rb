class DashboardController < ApplicationController
  # before_filter :authenticate_user!
  def index
    @link = Link.new
    @user_id = User.find_by_username(params[:username])
    if user_signed_in? and @user_id == current_user
      @links = Link.where(:user_id => current_user)
    else
      @links = Link.joins(:user).where(users: { username: params[:username] }, links: { link_type: 'public' })
    end

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @links }
      format.js
    end
  end

  def show

  end
end
