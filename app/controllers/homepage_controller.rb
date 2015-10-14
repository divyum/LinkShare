class HomepageController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :controller => 'dashboard', :action => 'index', :username => User.find_by_id(current_user).username
    end
  end
end
