module UtilityEnhancedComponentCollectorHelper
  # Component suites options: :bootstrap
  # tested_method example: :profile
  #
  # Example usage:
  # components_that_have_defined_method(component_suite: :nfg, tested_method: :tooltip, css_class: false)
  #
  # Result:
  # All of the nfg design system components are instantiated and
  # then tested if they have the defined method that that was passed in (:tested_method)
  # It collects the component names (or css class string) and returns an array,
  #
  # Example result when :css_class is false: [:button, :slat_action, :dropdown_item]
  # Example result when :css_class is true: ['btn', 'slat-action', 'dropdown-item']
  #
  # This can then be used to iterate over the page to verify that
  # the css class of the component that responds to the method
  # in question is present on the page.
  #
  # This is one way, at least, to double check that newly enhanced
  # components have been added to the feature specs.
  #
  # In practice, this array is also used as an alert on each feature spec view
  # to call out to the UAT person to also look for these system defined
  # components. Making sure that human eyes are also given accurate information
  def components_that_have_defined_method(component_suite: :bootstrap, tested_method:, css_class: false)
    components = []

    send("#{component_suite}_component_suite").each do |component_name|
      component = Bootstrap4RailsComponents::UI::Bootstrap.new(nil, component_name.to_sym)
      component_class = component.send(:ancestry_string).constantize

      # Don't continue if the component class doesn't have the requested method
      next unless component_class.method_defined?(tested_method)

      components << component_name_or_css_class(component_class: component_class, component_name: component_name, css_class: css_class)
    end

    components
  end

  private

  def bootstrap_component_suite
    Nfg::BOOTSTRAP_COMPONENT_NAMES
  end

  # Return the component's name or css class depending on the request
  def component_name_or_css_class(component_class:, component_name:, css_class:)
    if css_class
      # Don't return a '.' string
      return '' if component_css_class_string(component_class: component_class).blank?

      # returns a string like '.slat-actions'
      ".#{component_css_class_string(component_class: component_class)}"
    else
      component_name
    end
  end

  def component_css_class_string(component_class:)
    component_class.new({}, ApplicationController.new.view_context).send(:component_css_class)
  end
end
