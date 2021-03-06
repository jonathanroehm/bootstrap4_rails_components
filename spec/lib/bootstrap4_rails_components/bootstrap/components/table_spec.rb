require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::Bootstrap::Components::Table do
  subject { described_class }
  it { is_expected.to be < Bootstrap4RailsComponents::Bootstrap::Components::Base }
  it_behaves_like 'a component with a consistent initalized construction'
end
