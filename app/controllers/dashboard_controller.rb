class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
    @links = Link.where(:user_id => current_user)

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @links }
    end
  end

  def show

  end
end
