# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # TileHeader doc coming soon
      class TileHeader < Bootstrap4RailsComponents::Components::Base
        include Bootstrap::Utilities::Collapsible

        include Bootstrap4RailsComponents::Components::Utilities::Titleable
        include Bootstrap4RailsComponents::Components::Utilities::Iconable

        def component_family
          :tile
        end

        def render
          super do
            if collapsible && title
              concat(Bootstrap4RailsComponents::Components::Elements::Button.new({ traits: [:link, :block], collapse: collapse, class: 'no-link-color p-0 m-0' }, view_context).render {
                content_tag(:div, class: 'row align-items-center') do
                  concat(content_tag(:div, class: 'col-10 text-left') {
                    Bootstrap4RailsComponents::Components::Foundations::Typeface.new({ title: title, class: 'text-uppercase', icon: icon }, view_context).render
                  })
                  concat(content_tag(:div, class: 'col-2 text-right') {
                    Bootstrap4RailsComponents::Components::Foundations::Icon.new({ traits: ['caret-down fw'], tooltip: 'Show / hide additional information' }, view_context).render
                  })
                end
              })
            elsif title
              concat(Bootstrap4RailsComponents::Components::Foundations::Typeface.new({ title: title, class: 'text-uppercase', icon: icon }, view_context).render)
            end

            concat((block_given? ? yield : body))
          end
        end
      end
    end
  end
end
