# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Bootstrap
    module Components
      # Bootstrap Carousel Caption Component
      # https://getbootstrap.com/docs/4.1/components/carousel/#with-captions
      class CarouselCaption < Bootstrap4RailsComponents::Bootstrap::Components::Base
        def component_family
          :carousel
        end

        def label
          options.fetch(:label, nil)
        end

        def render
          super do
            capture do
              concat(content_tag(:h5, label)) if label
              concat(block_given? ? yield : body)
            end
          end
        end

        private

        def non_html_attribute_options
          super.push(:label)
        end
      end
    end
  end
end
