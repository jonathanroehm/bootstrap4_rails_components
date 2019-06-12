# frozen_string_literal: true

module Bootstrap4RailsComponents
  module UI
    # The base component building class for namespaced
    # components (bootstrap vs network_for_good / nfg)
    class Base
      attr_accessor :view_context

      def initialize(view_context)
        self.view_context = view_context
      end

      def bootstrap(component_name = nil, *traits, **options, &block)
        return unless render_component?(options)
        Bootstrap4RailsComponents::UI::Bootstrap.new(view_context, component_name, *traits, **options, &block).render_component
      end

      private

      # Opens up the component :options -
      # :render_if
      # :render_unless
      #
      # Pass in `render_if: your_condition?` or `render_unless: your_unless_condition?`
      # to the component to embed the `if/unless` condition right into the component
      # and not on yet another line of HTML.
      #
      # Example usage:
      # ui.bootstrap(:button, :submit, body: 'Delete', render_if: user.admin?)
      # ui.bootstrap(:button, :submit, body: 'Save', render_unless: user.admin?)
      def render_component?(options)
        return true unless options.key?(:render_if) || options.key?(:render_unless)
        if options.key?(:render_if)
          options[:render_if]
        else
          !options[:render_unless]
        end
      end
    end
  end
end
