class ApplicationController < ActionController::API
    before_action :check_admin

  private

  def check_admin
    redirect_to root_path, alert: "Access denied." unless current_user.admin?
  end
end
