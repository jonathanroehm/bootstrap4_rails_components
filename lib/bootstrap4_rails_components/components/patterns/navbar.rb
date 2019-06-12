# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Navbar docs coming soon
      class Navbar < Bootstrap4RailsComponents::Bootstrap::Components::Navbar
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap4RailsComponents::Components::Traits::Theme
        include Bootstrap4RailsComponents::Components::Traits::Navbar
      end
    end
  end
end
