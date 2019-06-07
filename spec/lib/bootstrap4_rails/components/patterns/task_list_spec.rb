require 'rails_helper'

RSpec.describe Bootstrap4Rails::Components::Patterns::TaskList do
  let(:task_list) { described_class.new(options, ActionController::Base.new.view_context) }
  let(:options) { {} }
  it { expect(described_class).to be < Bootstrap4Rails::Components::Base }
  it_behaves_like 'a component with a consistent initalized construction'
end
