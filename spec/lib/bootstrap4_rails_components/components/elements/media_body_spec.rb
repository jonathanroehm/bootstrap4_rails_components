require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::Components::Elements::MediaBody do
  let(:media_body) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4RailsComponents::Bootstrap::Components::MediaBody }
  it_behaves_like 'a component with a consistent initalized construction'

  it { expect(described_class.included_modules).to include Bootstrap4RailsComponents::Components::Utilities::Traitable }
  it { expect(described_class.included_modules).to include Bootstrap4RailsComponents::Components::Utilities::Describable }

  describe '#component_family' do
    subject { media_body.component_family }
    it { is_expected.to eq :media }
  end
end
