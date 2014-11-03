require 'rails_helper'

RSpec.describe "soliciteds/edit", :type => :view do
  before(:each) do
    @solicited = assign(:solicited, Solicited.create!(
      :amount => 1,
      :solicitud_id => 1,
      :implemento_id => 1
    ))
  end

  it "renders the edit solicited form" do
    render

    assert_select "form[action=?][method=?]", solicited_path(@solicited), "post" do

      assert_select "input#solicited_amount[name=?]", "solicited[amount]"

      assert_select "input#solicited_solicitud_id[name=?]", "solicited[solicitud_id]"

      assert_select "input#solicited_implemento_id[name=?]", "solicited[implemento_id]"
    end
  end
end
