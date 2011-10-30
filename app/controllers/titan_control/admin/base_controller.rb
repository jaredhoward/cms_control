module TitanControl
  class Admin::BaseController < ApplicationController
    layout 'titan_control/admin'
    # before_filter :verify_access
  end
end