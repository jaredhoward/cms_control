module TitanControl
  class ApplicationController < ActionController::Base

    protected

    def verify_access
      authenticate_or_request_with_http_basic("Mainpine Protected Area") do |username, password|
        username == 'admin' && password == 'password'
      end
      # authenticate_or_request_with_http_digest("Mainpine Protected Area") do |username|
      #   'password' if username == 'admin'
      # end
    end

    # # If we want to change the access error message.
    # def authentication_request(controller, realm, message = nil)
    #   message ||= "HTTP Digest: Access denied.\n"
    #   authentication_header(controller, realm)
    #   controller.__send__ :render, :text => message, :status => :unauthorized
    # end

  end
end