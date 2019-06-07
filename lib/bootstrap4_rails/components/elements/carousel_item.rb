# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Docs coming soon
      class CarouselItem < Bootstrap4Rails::Bootstrap::Components::CarouselItem
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::Active
      end
    end
  end
end
