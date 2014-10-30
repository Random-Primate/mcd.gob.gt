require 'rails_helper'

RSpec.describe "implementos/index", :type => :view do
=begin
  before(:each) do
    assign(:implementos, [
      Implemento.create!(
        :name => "Name",
        :piezas => 1
      ),
      Implemento.create!(
        :name => "Name",
        :piezas => 1
      )
    ])
  end

  it "renders a list of implementos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
=end
end
