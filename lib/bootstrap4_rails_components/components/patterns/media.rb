# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # MediaGroup doc coming soon
      class Media < Bootstrap4RailsComponents::Bootstrap::Components::Media
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
