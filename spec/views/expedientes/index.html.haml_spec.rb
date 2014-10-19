require 'rails_helper'

RSpec.describe "expedientes/index", :type => :view do
  before(:each) do
    assign(:expedientes, [
      Expediente.create!(
        :num_gestion => "Num Gestion",
        :num_exp => "Num Exp"
      ),
      Expediente.create!(
        :num_gestion => "Num Gestion",
        :num_exp => "Num Exp"
      )
    ])
  end

  it "renders a list of expedientes" do
    render
    assert_select "tr>td", :text => "Num Gestion".to_s, :count => 2
    assert_select "tr>td", :text => "Num Exp".to_s, :count => 2
  end
end
