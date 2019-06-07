require 'rails_helper'

RSpec.describe Bootstrap4Rails::Bootstrap::Components::ModalFooter do
  let(:modal_footer) { FactoryBot.create(:bootstrap_modal_footer, **options) }
  let(:options) { {} }

  it { expect(described_class).to be < Bootstrap4Rails::Bootstrap::Components::Base }
  it_behaves_like 'a component with a consistent initalized construction'

  describe '#component_family' do
    subject { modal_footer.component_family }
    it { is_expected.to eq :modal }
  end
end
