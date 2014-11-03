require 'rails_helper'

RSpec.describe "soliciteds/show", :type => :view do
  before(:each) do
    @solicited = assign(:solicited, Solicited.create!(
      :amount => 1,
      :solicitud_id => 2,
      :implemento_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
