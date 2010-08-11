class Admin::BaseController < ApplicationController
  layout 'admin'
  before_filter :verify_access
end
