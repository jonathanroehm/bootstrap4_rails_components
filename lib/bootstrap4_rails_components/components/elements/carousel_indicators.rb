# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Docs coming soon
      class CarouselIndicators < Bootstrap4RailsComponents::Bootstrap::Components::CarouselIndicators
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

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
