# frozen_string_literal: true

module Bootstrap4Rails
  module Bootstrap
    module Components
      # Bootstrap Modal Component
      # https://getbootstrap.com/docs/4.1/components/modal/
      class ModalBody < Bootstrap4Rails::Bootstrap::Components::Base

        def component_family
          :modal
        end
      end
    end
  end
end
