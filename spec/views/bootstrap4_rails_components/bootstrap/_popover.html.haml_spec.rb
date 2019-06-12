require 'rails_helper'

RSpec.describe 'bootstrap4_rails_components/bootstrap/_popover.html.haml', type: :view do
  let(:body) { 'test body content' }
  let(:popover) { FactoryBot.create(:bootstrap_popover, body: body) }
  subject { popover.render }

  it 'outputs a bootstrap popover component in html' do
    expect(subject).to have_selector '.popover', text: body
    expect(subject).to eq "<div class=\"popover\">#{body}</div>"
  end
end