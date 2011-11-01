require "rails"

module TitanControl
  class Railtie < Rails::Railtie
    config.titan_control = ActiveSupport::OrderedOptions.new
    config.titan_control.cms_inheriting_class ||= "TitanControl::ApplicationController"
  end
end
