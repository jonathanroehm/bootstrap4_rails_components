# frozen_string_literal: true

module Bootstrap4Rails
  module Bootstrap
    module Components
      # Bootstrap Card Header
      # https://getbootstrap.com/docs/4.1/components/card/#header-and-footer
      class CardImageOverlay < Bootstrap4Rails::Bootstrap::Components::Base
        include Bootstrap4Rails::Components::Utilities::Titleable

        def component_family
          :card
        end

        def image
          options.fetch(:image, '')
        end

        def render
          capture do
            if image
              concat(Bootstrap4Rails::Bootstrap::Components::CardImage.new({ image: image }, view_context).render)
            end

            concat(content_tag(:div, html_options) {
              capture do
                concat(content_tag(:h5, title, class: 'card-title')) if title
                concat(block_given? ? yield : body)
              end
            })
          end
        end

        private

        def component_css_class
          'card-img-overlay'
        end

        def non_html_attribute_options
          super.push(:image)
        end
      end
    end
  end
end
