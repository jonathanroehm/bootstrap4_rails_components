# frozen_string_literal: true

module Bootstrap4RailsComponents
  class Engine < ::Rails::Engine
    isolate_namespace Bootstrap4RailsComponents

    config.autoload_paths << Engine.root.join("lib")

    # Ensures that the config/bootstrap4_rails_components_manifest.js file is compiled
    # which, in turn, ensures that all of the non-autoloaded assets
    # are pre-compiled for the host-app's consumption.
    #
    # If you need to add unique assets to be precompiled
    # (new folders -- e.g.: 'font' -- within the assets directory)
    # update / add to the "links" found on the manifest file.
    #
    # Font assets example:
    # on app/assets/config/bootstrap4_rails_components_manifest.js
    #
    # //= link_tree '../font/bootstrap4_rails_components'
    #
    # See manifest here: app/assets/config/bootstrap4_rails_components_manifest.js
    #
    # Learn more about using the sprockets `link`ing mechanisms:
    # https://github.com/rails/sprockets#link
    #
    # Utilize engine initializer method:
    initializer 'bootstrap4_rails_components.assets.precompile' do |app|
      app.config.assets.precompile << "#{Engine.root.join('app', 'assets', 'config')}/bootstrap4_rails_components_manifest.js"
    end

    config.to_prepare do
      ActiveSupport.on_load :action_controller do
        helper Bootstrap4RailsComponents::ApplicationHelper
      end
    end
  end
end
