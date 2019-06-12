require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::Bootstrap::Components::CardFooter do
  let(:card_footer) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }

  it { expect(described_class).to be < Bootstrap4RailsComponents::Bootstrap::Components::Base }
  it_behaves_like 'a component with a consistent initalized construction'

  describe '#component_family' do
    subject { card_footer.component_family }
    it { is_expected.to eq :card }
  end
end
