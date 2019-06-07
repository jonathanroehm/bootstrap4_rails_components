# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # ListGroup docs coming soon
      class ListGroup < Bootstrap4Rails::Bootstrap::Components::ListGroup
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::ListGroup
      end
    end
  end
end
