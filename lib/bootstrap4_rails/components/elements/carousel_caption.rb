# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Docs coming soon
      class CarouselCaption < Bootstrap4Rails::Bootstrap::Components::CarouselCaption
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
