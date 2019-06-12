# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Slat doc coming soon
      class SlatItem < Bootstrap4RailsComponents::Components::Base
        include Bootstrap::Utilities::Headable
        include Bootstrap::Utilities::Sizable

        include Bootstrap4RailsComponents::Components::Traits::Size
        include Bootstrap4RailsComponents::Components::Traits::SlatItem

        def component_family
          :slats
        end

        def slat_header
          options.fetch(:slat_header, nil)
        end

        def caption
          options.fetch(:caption, nil)
        end

        def render
          super do
            if slat_header
              concat(content_tag(:h6, slat_header, class: 'display-4'))
            end
            if heading
              if href
                concat(content_tag(:a, href: href) {
                  Bootstrap4RailsComponents::Components::Foundations::Typeface.new({ subheading: heading }, view_context).render
                })
              else
                concat(Bootstrap4RailsComponents::Components::Foundations::Typeface.new({ subheading: heading }, view_context).render)
              end
            end
            concat(block_given? ? yield : body)
            if caption
              concat(Bootstrap4RailsComponents::Components::Foundations::Typeface.new({ caption: caption, class: 'mb-0' }, view_context).render)
            end
          end
        end

        private

        def css_classes
          [
            super,
            ('text-word-wrap' if size == :lg)
          ]
        end

        def non_html_attribute_options
          super.push(:slat_header, :caption)
        end
      end
    end
  end
end
