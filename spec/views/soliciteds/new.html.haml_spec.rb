require 'rails_helper'

RSpec.describe "soliciteds/new", :type => :view do
  before(:each) do
    assign(:solicited, Solicited.new(
      :amount => 1,
      :solicitud_id => 1,
      :implemento_id => 1
    ))
  end

  it "renders new solicited form" do
    render

    assert_select "form[action=?][method=?]", soliciteds_path, "post" do

      assert_select "input#solicited_amount[name=?]", "solicited[amount]"

      assert_select "input#solicited_solicitud_id[name=?]", "solicited[solicitud_id]"

      assert_select "input#solicited_implemento_id[name=?]", "solicited[implemento_id]"
    end
  end
end
