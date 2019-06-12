# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # doc coming soon
      class CardImage < Bootstrap4RailsComponents::Bootstrap::Components::CardImage
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
