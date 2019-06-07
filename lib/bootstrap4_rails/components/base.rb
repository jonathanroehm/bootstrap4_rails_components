# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    # Base NFG UI component for components that are not directly
    # inherited from Bootstrap base components (e.g.: buttons inhert their
    # Bootstrap counterpart, tiles don't).
    class Base < Bootstrap4Rails::Bootstrap::Components::Base
      include Bootstrap4Rails::Components::Utilities::Describable
      include Bootstrap4Rails::Components::Utilities::Renderable
      include Bootstrap4Rails::Components::Utilities::Traitable
    end
  end
end
