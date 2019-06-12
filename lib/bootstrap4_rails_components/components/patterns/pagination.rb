# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Docs coming soon
      class Pagination < Bootstrap4RailsComponents::Bootstrap::Components::Pagination
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
