# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # doc coming soon
      class CardHeader < Bootstrap4RailsComponents::Bootstrap::Components::CardHeader
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
