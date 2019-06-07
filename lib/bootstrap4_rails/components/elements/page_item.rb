# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Elements
      # Pagination sub component (page items)
      class PageItem < Bootstrap4Rails::Bootstrap::Components::PageItem
        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable
      end
    end
  end
end
