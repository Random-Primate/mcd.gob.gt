require 'rails_helper'

RSpec.describe "implementos/show", :type => :view do
  before(:each) do
    @implemento = assign(:implemento, Implemento.create!(
      :name => "Name",
      :piezas => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
