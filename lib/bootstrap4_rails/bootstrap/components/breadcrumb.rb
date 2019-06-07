# frozen_string_literal: true

module Bootstrap4Rails
  module Bootstrap
    module Components
      # Bootstrap Breadcrumb Component
      # https://getbootstrap.com/docs/4.1/components/breadcrumb/
      class Breadcrumb < Bootstrap4Rails::Bootstrap::Components::Base
        def component_family
          :breadcrumb
        end

        def render
          content_tag(:nav, aria: { label: 'breadcrumb' }) do
            content_tag(:ol, html_options) do
              (block_given? ? yield : body)
            end
          end
        end
      end
    end
  end
end
