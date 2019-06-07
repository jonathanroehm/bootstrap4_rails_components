# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Docs coming soon
      class CarouselIndicators < Bootstrap4Rails::Bootstrap::Components::CarouselIndicators
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        private

        def css_classes
          [
            super,
            'mb-0'
          ].join(' ').squish
        end
      end
    end
  end
end
