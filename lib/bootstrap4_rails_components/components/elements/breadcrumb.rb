# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Breadcrumb doesn't have any customizations unique to the design system yet
      # As such, the NFG UI Breadcrumb is simply a bootstrap Breadcrumb behind the scenes.
      # Traits will eventually be connected here.
      class Breadcrumb < Bootstrap4RailsComponents::Bootstrap::Components::Breadcrumb
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
