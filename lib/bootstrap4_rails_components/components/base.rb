# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    # Base NFG UI component for components that are not directly
    # inherited from Bootstrap base components (e.g.: buttons inhert their
    # Bootstrap counterpart, tiles don't).
    class Base < Bootstrap4RailsComponents::Bootstrap::Components::Base
      include Bootstrap4RailsComponents::Components::Utilities::Describable
      include Bootstrap4RailsComponents::Components::Utilities::Renderable
      include Bootstrap4RailsComponents::Components::Utilities::Traitable
    end
  end
end
