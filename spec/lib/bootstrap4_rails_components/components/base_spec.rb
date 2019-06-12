require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::Components::Base do
  it { expect(described_class).to be < Bootstrap4RailsComponents::Bootstrap::Components::Base }

  describe 'included modules' do
    it { expect(described_class.included_modules).to include Bootstrap4RailsComponents::Components::Utilities::Describable }
    it { expect(described_class.included_modules).to include Bootstrap4RailsComponents::Components::Utilities::Renderable }
    it { expect(described_class.included_modules).to include Bootstrap4RailsComponents::Components::Utilities::Traitable }
  end
end
