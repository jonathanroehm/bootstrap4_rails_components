# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Nav doc coming soon
      class NavbarBrand < Bootstrap4Rails::Bootstrap::Components::NavbarBrand
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
        include Bootstrap4Rails::Components::Utilities::VerticallyAlignable
      end
    end
  end
end
