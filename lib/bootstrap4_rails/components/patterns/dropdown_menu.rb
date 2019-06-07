# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Information coming soon
      class DropdownMenu < Bootstrap4Rails::Bootstrap::Components::DropdownMenu
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::Alignment
      end
    end
  end
end
