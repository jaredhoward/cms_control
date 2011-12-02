class Admin::BaseController < ApplicationController
  layout 'wordpress'
  before_filter :authenticate_user!
end
