# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Nav doc coming soon
      class NavbarNav < Bootstrap4RailsComponents::Bootstrap::Components::NavbarNav
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
        include Bootstrap4RailsComponents::Components::Utilities::VerticallyAlignable

        include Bootstrap4RailsComponents::Components::Traits::Alignment
      end
    end
  end
end
