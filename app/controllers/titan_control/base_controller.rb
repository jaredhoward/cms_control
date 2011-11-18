module TitanControl
  class BaseController < ApplicationController
    layout 'titan_control/wordpress'
    # before_filter :verify_access
  end
end