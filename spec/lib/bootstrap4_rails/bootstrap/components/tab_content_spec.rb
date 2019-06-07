require 'rails_helper'

RSpec.describe Bootstrap4Rails::Bootstrap::Components::TabContent do
  let(:tab_content) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4Rails::Bootstrap::Components::Base }
  it_behaves_like 'a component with a consistent initalized construction'

  describe '#component_family' do
    subject { tab_content.component_family }
    it { is_expected.to eq :tab }
  end
end
