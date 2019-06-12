require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::Components::ResourceThemesHelper do
  it { expect(described_class.included_modules).to include Bootstrap4RailsComponents::Components::Utilities::ResourceThemeable }
end
