# frozen_string_literal: true

module Bootstrap4Rails
  module Components
    module Patterns
      # Button Group doesn't have any customizations unique to the design system yet
      # As such, the NFG UI button group is simply a bootstrap button group behind the scenes.
      # Traits will eventually be connected here.
      class Collapse < Bootstrap4Rails::Bootstrap::Components::Collapse
        include Bootstrap::Utilities::Headable

        include Bootstrap4Rails::Components::Utilities::Traitable
        include Bootstrap4Rails::Components::Utilities::Describable
        include Bootstrap4Rails::Components::Utilities::Renderable

        include Bootstrap4Rails::Components::Traits::Collapse

        def render
          capture do
            if heading
              opts = { collapse: "##{id}", body: heading, icon: 'caret-down', class: 'pl-0 text-left' }
              opts.merge!(traits: [:link, :block])
              concat(Bootstrap4Rails::Components::Elements::Button.new(opts, view_context).render)
            end
            concat(super)
          end
        end
      end
    end
  end
end
