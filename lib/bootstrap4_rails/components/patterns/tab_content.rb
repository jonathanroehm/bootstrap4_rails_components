# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Modal docs coming soon
      class TabContent < Bootstrap4Rails::Bootstrap::Components::TabContent
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
