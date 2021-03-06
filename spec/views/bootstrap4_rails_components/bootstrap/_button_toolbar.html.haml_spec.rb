require 'rails_helper'

RSpec.describe 'bootstrap4_rails_components/bootstrap/_button_toolbar.html.haml', type: :view do
  let(:button_toolbar) { FactoryBot.create(:bootstrap_button_toolbar, **options) }
  let(:options) { {} }
  subject { button_toolbar.render }

  describe 'html output for the bootstrap button_toolbar' do
    let(:options) { { body: body } }
    let(:body) { 'test body content' }

    it 'outputs a bootstrap button_toolbar component in html' do
      expect(subject).to have_css '.btn-toolbar'
      expect(subject).to have_selector '.btn-toolbar', text: body
      expect(subject).to eq "<div class=\"btn-toolbar\" role=\"toolbar\">#{body}</div>"
    end
  end
end
