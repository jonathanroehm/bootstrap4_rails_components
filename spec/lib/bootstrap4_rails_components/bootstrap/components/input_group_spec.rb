require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::Bootstrap::Components::InputGroup do
  let(:input_group) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4RailsComponents::Bootstrap::Components::Base }
  it_behaves_like 'a component with a consistent initalized construction'
end
