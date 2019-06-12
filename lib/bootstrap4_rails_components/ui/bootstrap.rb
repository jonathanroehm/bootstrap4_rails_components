# frozen_string_literal: true

module Bootstrap4RailsComponents
  module UI
    # The class that yields the component for the view
    class Bootstrap
      include Bootstrap4RailsComponents::UI::Utilities::Initializer

      attr_accessor :view_context
      # attr_reader :component_name_folder

      def initialize(view_context, component_name = nil, *traits, **options, &block)
        self.view_context = view_context
        initializer(component_name, *traits, **options, &block)
        # @component_name_folder = component.component_family.to_s.pluralize if component.component_family.present?
        # raise component.send(:component_family).inspect
      end

      private

      def component_name_folder
        # component.component_family.to_s.pluralize if component.component_family.present?
        component.component_family.to_s.pluralize
        # ''
      end

      def group
        'bootstrap'
      end

      def grouping_folder
        'bootstrap'
      end

      def ancestry_string
        "Bootstrap4RailsComponents::Bootstrap::Components::#{class_name}"
      end

      def components_within_group(*)
        Bootstrap4RailsComponents::BOOTSTRAP_COMPONENT_NAMES
      end
    end
  end
end
