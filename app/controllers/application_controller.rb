# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

protected

  def verify_access
    authenticate_or_request_with_http_digest("Mainpine Protected Area") do |username|
      'mainpine' if username == 'admin'
    end
  end

  # # If we want to change the access error message.
  # def authentication_request(controller, realm, message = nil)
  #   message ||= "HTTP Digest: Access denied.\n"
  #   authentication_header(controller, realm)
  #   controller.__send__ :render, :text => message, :status => :unauthorized
  # end

end
