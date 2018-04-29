class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def require_is_admin
    if current_user.email.admin?
      flash[:alert] = "you are not admin"
      redirect_to root_path
    end
  end
end
