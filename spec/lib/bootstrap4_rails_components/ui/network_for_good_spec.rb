require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::UI::NetworkForGood do
  let(:view_context) { ActionController::Base.new.view_context }
  let(:bootstrap4_rails_components_component) { Bootstrap4RailsComponents::UI::NetworkForGood.new(view_context, component_name, *traits, **options, &block) }
  let(:component_name) { :alert }
  let(:traits) { [:trait] }
  let(:options) { { body: body } }
  let(:body) { nil }
  let(:block) { nil }

  describe '#initialize' do
    subject { bootstrap4_rails_components_component }
    it 'initializes the bootstrap4_rails_components_component component with the expected attributes' do
      expect(bootstrap4_rails_components_component.view_context).to eq view_context
      expect(bootstrap4_rails_components_component.component_name).to eq component_name
      expect(bootstrap4_rails_components_component.traits).to eq traits
      expect(bootstrap4_rails_components_component.options).to eq options.merge!(traits: traits)
      expect(bootstrap4_rails_components_component.options[:body]).not_to be
    end
  end

  describe '#component_name_folder' do
    subject { bootstrap4_rails_components_component.send(:component_name_folder) }

    context 'when the component has a component family' do
      let(:component_name) { :breadcrumb_item } # breadcrumb_item belongs to breadcrumb component family
      it { is_expected.to eq 'breadcrumbs' }
    end

    context 'when the component does not have a component family' do
      let(:component_name) { :alert } # alert does not belong to a component family
      it { is_expected.to eq 'alerts' }
    end
  end

  describe '#group' do
    subject { bootstrap4_rails_components_component.send(:group) }
    context 'when the component is a foundation' do
      let(:component_name) { :icon }
      it { is_expected.to eq 'Foundations' }
    end

    context 'when the component is an element' do
      let(:component_name) { :activity }
      it { is_expected.to eq 'Elements' }
    end

    context 'when the component is a pattern' do
      let(:component_name) { :tile }
      it { is_expected.to eq 'Patterns' }
    end
  end

  describe '#ancestry_string' do
    let(:component_name) { :alert }
    subject { bootstrap4_rails_components_component.send(:ancestry_string) }
    it { is_expected.to eq "Bootstrap4RailsComponents::Components::Elements::Alert" }
  end

  describe '#components_within_group(grouping:)' do
    subject { bootstrap4_rails_components_component.send(:components_within_group, grouping: grouping) }

    context 'when the component is a foundation' do
      let(:grouping) { 'foundation' }
      it { is_expected.to eq Bootstrap4RailsComponents::FOUNDATION_COMPONENT_NAMES }
    end

    context 'when the component is a element' do
      let(:grouping) { 'element' }
      it { is_expected.to eq Bootstrap4RailsComponents::ELEMENT_COMPONENT_NAMES }
    end

    context 'when the component is a pattern' do
      let(:grouping) { 'pattern' }
      it { is_expected.to eq Bootstrap4RailsComponents::PATTERN_COMPONENT_NAMES }
    end
  end
end
