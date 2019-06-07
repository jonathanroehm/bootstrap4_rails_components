# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Tile doc coming soon
      class Tile < Bootstrap4Rails::Components::Base
        include Bootstrap::Utilities::Collapsible

        include Bootstrap4Rails::Components::Utilities::Iconable
        include Bootstrap4Rails::Components::Utilities::Titleable

        include Bootstrap4Rails::Components::Traits::Collapse

        def heading
          options.fetch(:heading, nil)
        end

        def component_family
          :tile
        end

        def render_in_body
          options.fetch(:render_in_body, true)
        end

        def render
          super do
            if render_in_body
              if title.present?
                concat(Bootstrap4Rails::Components::Patterns::TileHeader.new({ title: title, icon: icon, collapsible: collapsible, collapse: ("#collapse_#{id}" if collapsible) }, view_context).render)
              end
              if collapsible
                concat(Bootstrap4Rails::Components::Patterns::Collapse.new({ id: "collapse_#{id}", collapsed: collapsed }, view_context).render {
                  Bootstrap4Rails::Components::Patterns::TileBody.new({ heading: heading }, view_context).render do
                    (block_given? ? yield : body)
                  end
                })
              else
                concat(Bootstrap4Rails::Components::Patterns::TileBody.new({ heading: heading }, view_context).render {
                  (block_given? ? yield : body)
                })
              end
            else
              (block_given? ? yield : body)
            end
          end
        end

        private

        def non_html_attribute_options
          super.push(:heading, :render_in_body)
        end
      end
    end
  end
end
