require 'rails_helper'

RSpec.describe 'bootstrap4_rails/elements/alerts/_alert.html.haml', type: :view do
  let(:alert) { FactoryBot.create(:alert, traits: traits, **options) }
  let(:options) { {} }
  let(:traits) { [] }
  subject { alert.render }

  describe 'the alert html component' do
    it 'renders the bootstrap alert' do
      skip
    end
  end

  pending 'rewrite just occurred, new specs needed'
end
