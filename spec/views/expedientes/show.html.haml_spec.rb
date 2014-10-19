require 'rails_helper'

RSpec.describe "expedientes/show", :type => :view do
  before(:each) do
    @expediente = assign(:expediente, Expediente.create!(
      :num_gestion => "Num Gestion",
      :num_exp => "Num Exp"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Num Gestion/)
    expect(rendered).to match(/Num Exp/)
  end
end
