# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Information coming soon
      class DropdownMenu < Bootstrap4RailsComponents::Bootstrap::Components::DropdownMenu
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap4RailsComponents::Components::Traits::Alignment
      end
    end
  end
end
