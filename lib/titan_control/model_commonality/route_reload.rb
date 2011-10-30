module TitanControl
  module ModelCommonality::RouteReload

    def self.included(base)
      base.after_save :reload_routes
      base.after_destroy :reload_routes
    end

    private

    def reload_routes
      ActionController::Routing::Routes.reload! if defined?(ActionController::Routing::Routes)
    end
    # alias_method :after_save,    :reload_routes
    # alias_method :after_destroy, :reload_routes

  end
end