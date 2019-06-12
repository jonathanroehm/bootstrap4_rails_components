# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # ListGroup docs coming soon
      class ListGroup < Bootstrap4RailsComponents::Bootstrap::Components::ListGroup
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap4RailsComponents::Components::Traits::ListGroup
      end
    end
  end
end
