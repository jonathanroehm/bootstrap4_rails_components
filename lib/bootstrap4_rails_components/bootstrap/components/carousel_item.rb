# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Bootstrap
    module Components
      # Bootstrap Carousel Slide / Carousel Item Component
      # https://getbootstrap.com/docs/4.1/components/carousel/#slides-only
      class CarouselItem < Bootstrap4RailsComponents::Bootstrap::Components::Base
        include Bootstrap::Utilities::Activatable

        def caption
          options.fetch(:caption, nil)
        end

        def component_family
          :carousel
        end

        def image
          options.fetch(:image, nil)
        end

        def label
          options.fetch(:label, nil)
        end

        def render
          super do
            capture do
              concat(image_tag(image, class: 'd-block w-100')) if image
              if caption || label
                concat(Bootstrap4RailsComponents::Bootstrap::Components::CarouselCaption.new({ body: caption, label: label }, view_context).render)
              end
              concat(block_given? ? yield : body)
            end
          end
        end

        private

        def non_html_attribute_options
          super.push(:image,
                     :caption,
                     :label)
        end
      end
    end
  end
end
