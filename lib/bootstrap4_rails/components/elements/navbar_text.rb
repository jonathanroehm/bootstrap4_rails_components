# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Nav doc coming soon
      class NavbarText < Bootstrap4Rails::Bootstrap::Components::NavbarText
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
