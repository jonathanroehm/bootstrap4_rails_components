# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Step doc coming soon
      class Step < Bootstrap4Rails::Components::Elements::NavItem
        include Bootstrap::Utilities::Activatable

        include Bootstrap4Rails::Components::Utilities::Iconable

        include Bootstrap4Rails::Components::Traits::Step

        def component_family
          :steps
        end

        def step
          options.fetch(:step, nil)
        end

        def visited
          options.fetch(:visited, false)
        end

        def disabled
          options[:disabled] || (!visited && !active)
        end

        def render
          content_tag(as, html_options) do
            Bootstrap4Rails::Components::Elements::StepIndicator.new({ step: step.to_s, body: (block_given? ? yield : body), icon: icon, href: href, disabled: disabled }, view_context).render
          end
        end

        private

        def base_element
          as
        end

        def css_classes
          [
            super,
            ('visited' if visited)
          ].join(' ').squish
        end

        def non_html_attribute_options
          super.push(:visited, :step)
        end
      end
    end
  end
end
