require 'rails_helper'

RSpec.describe Bootstrap4Rails::Components::Base do
  it { expect(described_class).to be < Bootstrap4Rails::Bootstrap::Components::Base }

  describe 'included modules' do
    it { expect(described_class.included_modules).to include Bootstrap4Rails::Components::Utilities::Describable }
    it { expect(described_class.included_modules).to include Bootstrap4Rails::Components::Utilities::Renderable }
    it { expect(described_class.included_modules).to include Bootstrap4Rails::Components::Utilities::Traitable }
  end
end
