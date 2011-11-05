require "rails"

module TitanControl
  class Engine < Rails::Engine
    isolate_namespace TitanControl
  end
end
