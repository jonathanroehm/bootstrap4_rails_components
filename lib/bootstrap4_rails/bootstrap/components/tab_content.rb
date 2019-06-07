# frozen_string_literal: true

module Bootstrap4Rails
  module Bootstrap
    module Components
      # Bootstrap Progress Component
      # https://getbootstrap.com/docs/4.1/components/progress/
      class TabContent < Bootstrap4Rails::Bootstrap::Components::Base
        def component_family
          :tab
        end
      end
    end
  end
end
