# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Jumbotron docs coming soon
      class Jumbotron < Bootstrap4RailsComponents::Bootstrap::Components::Jumbotron
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
