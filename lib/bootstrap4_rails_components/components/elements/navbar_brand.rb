# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Nav doc coming soon
      class NavbarBrand < Bootstrap4RailsComponents::Bootstrap::Components::NavbarBrand
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
        include Bootstrap4RailsComponents::Components::Utilities::VerticallyAlignable
      end
    end
  end
end
