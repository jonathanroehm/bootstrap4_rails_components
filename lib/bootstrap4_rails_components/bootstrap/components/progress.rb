# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Bootstrap
    module Components
      # Bootstrap Parent Progress Component
      # https://getbootstrap.com/docs/4.1/components/progress/
      class Progress < Bootstrap4RailsComponents::Bootstrap::Components::Base
        include Bootstrap::Utilities::Progressable

        def component_family
          :progress
        end

        def height
          options.fetch(:height, nil)
        end

        def style
          [
            super,
            ("height: #{height}px;" if height)
          ].join(' ').squish
        end

        def render
          super do
            if body
              (block_given? ? yield : body)
            else
              Bootstrap4RailsComponents::Bootstrap::Components::ProgressBar.new({ theme: theme, label: label, progress: progress, striped: striped, animated: animated }, view_context).render
            end
          end
        end

        private

        def non_html_attribute_options
          super.push(:height)
        end
      end
    end
  end
end
