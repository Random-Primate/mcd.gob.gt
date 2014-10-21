require 'rails_helper'

RSpec.describe "implementos/edit", :type => :view do
  before(:each) do
    @implemento = assign(:implemento, Implemento.create!(
      :name => "MyString",
      :piezas => 1
    ))
  end

  it "renders the edit implemento form" do
    render

    assert_select "form[action=?][method=?]", implemento_path(@implemento), "post" do

      assert_select "input#implemento_name[name=?]", "implemento[name]"

      assert_select "input#implemento_piezas[name=?]", "implemento[piezas]"
    end
  end
end
