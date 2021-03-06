# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Bootstrap
    module Components
      # Bootstrap List Group Item Component
      # https://getbootstrap.com/docs/4.1/components/list-group/
      class ListGroupItem < Bootstrap4RailsComponents::Bootstrap::Components::Base
        include Bootstrap::Utilities::Wrappable
        include Bootstrap::Utilities::Activatable
        include Bootstrap::Utilities::Disableable
        include Bootstrap::Utilities::Themeable

        def component_family
          :list_group
        end

        def action
          options.fetch(:action, false)
        end

        def badge
          options.fetch(:badge, nil)
        end

        def render
          super do
            capture do
              concat(block_given? ? yield : body)
              if badge
                concat(Bootstrap4RailsComponents::Bootstrap::Components::Badge.new({ pill: true, theme: (theme || Bootstrap4RailsComponents::DEFAULT_BOOTSTRAP_THEME), body: badge }, view_context).render)
              end
            end
          end
        end

        private

        def base_element
          as
        end

        def default_theme
          nil
        end

        def default_html_wrapper_element
          :li
        end

        def css_classes
          [
            super,
            ("#{component_css_class}-action" if action),
            ('d-flex justify-content-between align-items-center' if badge)
          ].join(' ').squish
        end

        def non_html_attribute_options
          super.push(:action, :badge)
        end

        def outlineable?
          false
        end
      end
    end
  end
end
