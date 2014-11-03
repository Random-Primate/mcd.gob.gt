require 'rails_helper'

RSpec.describe "soliciteds/index", :type => :view do
  before(:each) do
    assign(:soliciteds, [
      Solicited.create!(
        :amount => 1,
        :solicitud_id => 2,
        :implemento_id => 3
      ),
      Solicited.create!(
        :amount => 1,
        :solicitud_id => 2,
        :implemento_id => 3
      )
    ])
  end

  it "renders a list of soliciteds" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
