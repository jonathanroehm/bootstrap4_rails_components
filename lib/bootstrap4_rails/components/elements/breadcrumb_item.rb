# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Breadcrumb doesn't have any customizations unique to the design system yet
      # As such, the NFG UI Breadcrumb is simply a bootstrap Breadcrumb behind the scenes.
      # Traits will eventually be connected here.
      class BreadcrumbItem < Bootstrap4Rails::Bootstrap::Components::BreadcrumbItem
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
