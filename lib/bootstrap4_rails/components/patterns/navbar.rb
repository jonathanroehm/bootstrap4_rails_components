# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Navbar docs coming soon
      class Navbar < Bootstrap4Rails::Bootstrap::Components::Navbar
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::Theme
        include Bootstrap4Rails::Components::Traits::Navbar
      end
    end
  end
end
