# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Jumbotron docs coming soon
      class Jumbotron < Bootstrap4Rails::Bootstrap::Components::Jumbotron
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
