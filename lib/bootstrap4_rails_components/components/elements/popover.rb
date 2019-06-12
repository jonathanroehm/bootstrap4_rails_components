# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Popover doc coming soon
      class Popover < Bootstrap4RailsComponents::Bootstrap::Components::Popover
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
