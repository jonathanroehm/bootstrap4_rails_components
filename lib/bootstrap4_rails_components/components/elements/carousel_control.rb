# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Docs coming soon
      class CarouselControl < Bootstrap4RailsComponents::Bootstrap::Components::CarouselControl
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
