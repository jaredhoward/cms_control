module TitanControl
  module ModelCommonality::RouteReload
    extend ActiveSupport::Concern

    included do
      after_save :reload_routes
      after_destroy :reload_routes
    end

    private

    def reload_routes
      ActionController::Routing::Routes.reload! if defined?(ActionController::Routing::Routes)
    end
    # alias_method :after_save,    :reload_routes
    # alias_method :after_destroy, :reload_routes

  end
end