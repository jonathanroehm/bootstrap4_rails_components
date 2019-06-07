# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Docs coming soon
      class CarouselControl < Bootstrap4Rails::Bootstrap::Components::CarouselControl
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
