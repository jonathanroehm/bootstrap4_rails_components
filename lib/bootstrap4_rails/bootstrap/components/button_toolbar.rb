# frozen_string_literal: true

module Bootstrap4Rails
  module Bootstrap
    module Components
      # Bootstrap Button Toolbar Component
      # https://getbootstrap.com/docs/4.1/components/button-group/#button-toolbar
      class ButtonToolbar < Bootstrap4Rails::Bootstrap::Components::Base
        private

        def component_css_class
          'btn-toolbar'
        end

        def assistive_html_attributes
          super.merge!(role: 'toolbar')
        end
      end
    end
  end
end
