# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Carousel doesn't have any customizations unique to the design system yet
      # As such, the NFG UI carousel is simply a bootstrap carousel behind the scenes.
      # Traits will eventually be connected here.
      class Carousel < Bootstrap4RailsComponents::Bootstrap::Components::Carousel
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        def render
          content_tag(:div, html_options) do
            content_tag(:div, class: 'carousel-inner pb-3') do
              concat((block_given? ? yield : body))
              if controls
                concat(Bootstrap4RailsComponents::Components::Elements::CarouselControl.new({ control: :next, carousel: "##{id}" }, view_context).render)
                concat(Bootstrap4RailsComponents::Components::Elements::CarouselControl.new({ control: :prev, carousel: "##{id}" }, view_context).render)
              end
              if indicators > 0
                concat(Bootstrap4RailsComponents::Components::Elements::CarouselIndicators.new({ count: indicators, carousel: "##{id}" }, view_context).render)
              end
            end
          end
        end
      end
    end
  end
end
