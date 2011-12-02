class Admin::SessionsController < Devise::SessionsController
  layout 'logged_out'

  private

  def after_sign_in_path_for(resource_or_scope)
    if resource_or_scope.is_a?(TitanControl::User)
      admin_dashboard_url
    else
      super
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      admin_dashboard_url
    else
      super
    end
  end

end
