class Admin::DashboardController < Admin::BaseController
  skip_before_filter :authenticate_user!, :only => [:index]
  helper_method :resource_name, :resource, :devise_mapping

  def index
    render 'devise/sessions/new', :layout => 'logged_out' unless user_signed_in?
  end

  private

  def resource_name
    :user
  end

  def resource
    @resource ||= TitanControl::User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[resource_name]
  end

end
