# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Docs coming soon
      class CarouselItem < Bootstrap4RailsComponents::Bootstrap::Components::CarouselItem
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        include Bootstrap4RailsComponents::Components::Traits::Active
      end
    end
  end
end
