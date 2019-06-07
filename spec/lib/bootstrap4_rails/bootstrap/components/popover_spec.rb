require 'rails_helper'

RSpec.describe Bootstrap4Rails::Bootstrap::Components::Popover do
  subject { described_class }
  it { is_expected.to be < Bootstrap4Rails::Bootstrap::Components::Base }
  it_behaves_like 'a component with a consistent initalized construction'

end
