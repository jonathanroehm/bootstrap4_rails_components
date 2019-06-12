# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # MediaObject doc coming soon
      class MediaBody < Bootstrap4RailsComponents::Bootstrap::Components::MediaBody
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
