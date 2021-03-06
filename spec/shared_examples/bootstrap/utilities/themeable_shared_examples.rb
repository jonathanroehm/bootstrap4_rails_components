# frozen_string_literal: true

shared_examples_for 'a component that includes the Themeable utility module' do |component_suite:|
  describe 'Themeable module included in the component' do
    let(:component) { described_class.new({}, ActionController::Base.new.view_context) }
    it { expect(described_class.included_modules).to include Bootstrap4RailsComponents::Bootstrap::Utilities::Themeable }
    it 'responds to the Themeable public methods' do
      expect(component).to respond_to :outlined, :theme
    end
  end

  describe 'a themeable (rendered) component' do
    let(:component_symbolic_name) { described_class.to_s.split('::').last.underscore.downcase.to_sym }
    let(:view_context) { ActionController::Base.new.view_context }
    let(:ruby_component) { described_class.new(options, ActionController::Base.new.view_context) }
    let(:rendered_component) { view_context.ui.send(component_suite, component_symbolic_name, ruby_component.options) }
    let(:options) { {} }

    subject { uniform_rendered_component(rendered_component) }

    context 'when a theme is present in options' do
      context 'when outlined is present in options' do
        let(:options) { { outlined: true, theme: @theme } }
        Bootstrap4RailsComponents::BOOTSTRAP_THEMES.each do |theme|
          it 'applies a theme that is outlined' do
            @theme = theme
            if ruby_component.send(:outlineable?)
              expect(substring_present?(string: subject,
                                        starting_substring: "class='",
                                        ending_substring: "'",
                                        sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{ruby_component.send(:outlined_css_class_prefix)}#{theme}")).to be

            else
              expect(substring_present?(string: subject,
                                        starting_substring: "class='",
                                        ending_substring: "'",
                                        sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{ruby_component.send(:outlined_css_class_prefix)}#{theme}")).not_to be

              expect(substring_present?(string: subject,
                                        starting_substring: "class='",
                                        ending_substring: "'",
                                        sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{theme}")).to be
            end
          end
        end
      end

      context 'when outlined is false in options' do
        let(:options) { { outlined: false, theme: @theme } }
        it_behaves_like 'a component without outlined themes'
      end

      context 'when outlined is nil in options' do
        let(:options) { { outlined: nil, theme: @theme } }
        it_behaves_like 'a component without outlined themes'
      end

      context 'when outlined is not present in options' do
        let(:options) { { theme: @theme } }
        it_behaves_like 'a component without outlined themes'
      end
    end

    context 'when theme is not present in options' do
      let(:component_default_theme) { ruby_component.send(:default_theme) }
      let(:default_theme) { Class.new.include(Bootstrap4RailsComponents::Bootstrap::Utilities::Themeable).new.send(:default_theme) }
      context 'when a default theme is established in the component' do

        it 'renders the component with the alternative default theme' do
          unless component_default_theme.nil?
            expect(substring_present?(string: subject,
                                      starting_substring: "class='",
                                      ending_substring: "'",
                                      sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{component_default_theme}")).to be

          end
        end
      end

      context 'when the default theme is set to nil in the component' do
        it 'renders the component with no theme' do
          if component_default_theme.nil?
            if subject.match('class')
              expect(substring_present?(string: subject,
                                        starting_substring: "class='",
                                        ending_substring: "'",
                                        sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{default_theme}")).not_to be
            else
              expect(subject).not_to include "#{ruby_component.send(:theme_css_class_prefix)}#{default_theme}"
            end
          end
        end
      end

      context 'when a default theme is not established in the component' do
        it 'renders the component with the themeable default theme' do
          unless component_default_theme.nil?
            expect(substring_present?(string: subject,
                                      starting_substring: "class='",
                                      ending_substring: "'",
                                      sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{component_default_theme}")).to be
          end
        end
      end

      context 'when theme is set to nil' do
        let(:options) { { theme: nil } }

        it 'renders the component with no themes' do
          if subject.match('class')
            by "when the component has classes in its html" do
              expect(substring_present?(string: subject,
                                        starting_substring: "class='",
                                        ending_substring: "'",
                                        sought_substring: "#{ruby_component.send(:component_css_class)}")).to be

              expect(substring_present?(string: subject,
                                        starting_substring: "class='",
                                        ending_substring: "'",
                                        sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{component_default_theme}")).not_to be
            end
          else
            by 'when the component does not have the class attribute in its html' do
              expect(subject).to include "#{ruby_component.send(:component_css_class)}"
              expect(subject).not_to include "#{ruby_component.send(:theme_css_class_prefix)}#{component_default_theme}"
            end
          end
        end

        context 'and when a theme is present in options' do
          let(:tested_theme) { Bootstrap4RailsComponents::BOOTSTRAP_THEMES.sample(1).first }
          let(:options) { { theme: tested_theme } }
          it 'renders the component with a theme' do
            expect(substring_present?(string: subject,
                                      starting_substring: "class='",
                                      ending_substring: "'",
                                      sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{tested_theme}")).to be
          end
        end
      end
    end
  end
end

shared_examples_for 'a component without outlined themes' do
  Bootstrap4RailsComponents::BOOTSTRAP_THEMES.each do |theme|
    it 'applies a theme that is not outlined' do
      @theme = theme
      expect(substring_present?(string: uniform_rendered_component(rendered_component),
                                starting_substring: "class='",
                                ending_substring: "'",
                                sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{ruby_component.send(:outlined_css_class_prefix)}#{theme}")).not_to be

      expect(substring_present?(string: uniform_rendered_component(rendered_component),
                                starting_substring: "class='",
                                ending_substring: "'",
                                sought_substring: "#{ruby_component.send(:theme_css_class_prefix)}#{theme}")).to be
    end
  end
end
