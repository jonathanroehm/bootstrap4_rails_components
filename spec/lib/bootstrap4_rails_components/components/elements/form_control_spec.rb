require 'rails_helper'

RSpec.describe Bootstrap4RailsComponents::Components::Elements::FormControl do
  let(:form_control) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4RailsComponents::Components::Base }
  it_behaves_like 'a component with a consistent initalized construction'
end
