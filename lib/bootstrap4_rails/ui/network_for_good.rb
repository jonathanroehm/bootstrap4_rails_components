# frozen_string_literal: true

module Bootstrap4Rails
  module UI
    class NetworkForGood
      include Bootstrap4Rails::UI::Utilities::Initializer

      attr_accessor :view_context

      def initialize(view_context, component_name = nil, *traits, **options, &block)
        self.view_context = view_context
        initializer(component_name, *traits, **options, &block)
      end

      private

      def component_name_folder
        component_family.present? ? component_family.to_s.pluralize : component_name.to_s.pluralize
      end

      def group
        Bootstrap4Rails::GROUPING_NAMES.each do |grouping|
          return grouping.to_s.camelize if components_within_group(grouping: grouping).include?(component_name)
        end
      end

      def grouping_folder
        folder_name = ''
        Bootstrap4Rails::GROUPING_NAMES.each do |grouping|
          next unless components_within_group(grouping: grouping).include?(component_name)
          folder_name = grouping.to_s
        end
        folder_name
      end

      def ancestry_string
        "Bootstrap4Rails::Components::
         #{nested_class_name_string}::
         #{class_name}".tr(" \t\r\n", '')
      end

      def nested_class_name_string
        Bootstrap4Rails::GROUPING_NAMES.each do |grouping|
          next unless components_within_group(grouping: grouping).include?(component_name)
          return grouping.to_s.camelize
        end
      end

      def components_within_group(grouping:)
        "Bootstrap4Rails::#{grouping.to_s.singularize.upcase}_COMPONENT_NAMES".constantize
      end
    end
  end
end
