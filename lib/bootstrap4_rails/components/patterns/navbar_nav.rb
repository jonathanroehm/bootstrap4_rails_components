# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Nav doc coming soon
      class NavbarNav < Bootstrap4Rails::Bootstrap::Components::NavbarNav
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
        include Bootstrap4Rails::Components::Utilities::VerticallyAlignable

        include Bootstrap4Rails::Components::Traits::Alignment
      end
    end
  end
end
