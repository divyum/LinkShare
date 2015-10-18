class HomepageController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :controller => 'links', :action => 'index', :username => User.find_by_id(current_user).username
    end
  end
end
