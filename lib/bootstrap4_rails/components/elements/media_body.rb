# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # MediaObject doc coming soon
      class MediaBody < Bootstrap4Rails::Bootstrap::Components::MediaBody
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
