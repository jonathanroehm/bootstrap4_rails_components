# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Popover doc coming soon
      class Popover < Bootstrap4Rails::Bootstrap::Components::Popover
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
