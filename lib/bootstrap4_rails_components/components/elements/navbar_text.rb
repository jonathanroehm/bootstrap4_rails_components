# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Nav doc coming soon
      class NavbarText < Bootstrap4RailsComponents::Bootstrap::Components::NavbarText
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
