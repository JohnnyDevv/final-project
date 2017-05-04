class ApplicationController < ActionController::Base
	before_action :getCategoryNav
  protect_from_forgery with: :exception

  private
  def getCategoryNav
  	@categoryNav = Category.all
  end

  def require_admin
    redirect_to '/ ' unless current_user.admin?
  end  
end
