# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Patterns
      # Button Toolbar doesn't have any customizations unique to the design system yet
      # As such, the NFG UI button group is simply a bootstrap button group behind the scenes.
      # Traits will eventually be connected here.
      class ButtonToolbar < Bootstrap4RailsComponents::Bootstrap::Components::ButtonToolbar
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable

        # TODO It's not clear to me whether the traits listed above actually do anything
        # I think the note above implies that they don't, but then why include them? If they don't
        # actually do anything yet, they should be removed, or at least commented out
      end
    end
  end
end
