# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # TileBody doc coming soon
      class TileBody < Bootstrap4Rails::Components::Base
        include Bootstrap4Rails::Components::Utilities::Iconable

        def heading
          options.fetch(:heading, nil)
        end

        def component_family
          :tile
        end

        def render
          super do
            if heading
              concat(Bootstrap4Rails::Components::Foundations::Typeface.new({ heading: heading, icon: icon }, view_context).render)
            end
            concat((block_given? ? yield : body))
          end
        end
      end
    end
  end
end
