# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Modal docs coming soon
      class Modal < Bootstrap4RailsComponents::Bootstrap::Components::Modal
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
        include Bootstrap4RailsComponents::Components::Utilities::Titleable
      end
    end
  end
end
