# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Docs coming soon
      class Pagination < Bootstrap4Rails::Bootstrap::Components::Pagination
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
