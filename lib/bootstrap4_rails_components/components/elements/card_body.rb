# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Bootstrap Card Body
      # https://getbootstrap.com/docs/4.1/components/card/#header-and-footer
      class CardBody < Bootstrap4RailsComponents::Bootstrap::Components::CardBody
        def component_family
          :card
        end
      end
    end
  end
end
