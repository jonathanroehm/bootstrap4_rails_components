# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Modal docs coming soon
      class Modal < Bootstrap4Rails::Bootstrap::Components::Modal
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
        include Bootstrap4Rails::Components::Utilities::Titleable
      end
    end
  end
end
