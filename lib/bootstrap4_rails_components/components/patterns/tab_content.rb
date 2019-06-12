# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Modal docs coming soon
      class TabContent < Bootstrap4RailsComponents::Bootstrap::Components::TabContent
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
