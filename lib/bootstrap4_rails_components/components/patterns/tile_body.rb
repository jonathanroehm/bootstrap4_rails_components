# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # TileBody doc coming soon
      class TileBody < Bootstrap4RailsComponents::Components::Base
        include Bootstrap4RailsComponents::Components::Utilities::Iconable

        def heading
          options.fetch(:heading, nil)
        end

        def component_family
          :tile
        end

        def render
          super do
            if heading
              concat(Bootstrap4RailsComponents::Components::Foundations::Typeface.new({ heading: heading, icon: icon }, view_context).render)
            end
            concat((block_given? ? yield : body))
          end
        end
      end
    end
  end
end
