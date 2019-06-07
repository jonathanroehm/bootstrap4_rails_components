require 'rails_helper'

RSpec.describe Bootstrap4Rails::Components::ResourceThemesHelper do
  it { expect(described_class.included_modules).to include Bootstrap4Rails::Components::Utilities::ResourceThemeable }
end
