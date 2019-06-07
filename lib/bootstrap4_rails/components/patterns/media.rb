# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # MediaGroup doc coming soon
      class Media < Bootstrap4Rails::Bootstrap::Components::Media
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
