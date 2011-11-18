require "rails"
require "titan_control/model_commonality/metaable"

module TitanControl
  class Railtie < Rails::Railtie
    config.titan_control = ActiveSupport::OrderedOptions.new
    config.titan_control.cms_inheriting_class ||= "::ApplicationController"
    config.titan_control.cms_metaables ||= TitanControl::ModelCommonality::Metaable::DEFAULT_METAABLES
  end
end
