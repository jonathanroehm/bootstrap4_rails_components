# frozen_string_literal: true

module Bootstrap4RailsComponents
  module Components
    module Elements
      # Pagination sub component (page items)
      class PageItem < Bootstrap4RailsComponents::Bootstrap::Components::PageItem
        include Bootstrap4RailsComponents::Components::Utilities::Traitable
        include Bootstrap4RailsComponents::Components::Utilities::Describable
        include Bootstrap4RailsComponents::Components::Utilities::Renderable
      end
    end
  end
end
