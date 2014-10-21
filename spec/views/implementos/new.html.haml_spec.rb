require 'rails_helper'

RSpec.describe "implementos/new", :type => :view do
  before(:each) do
    assign(:implemento, Implemento.new(
      :name => "MyString",
      :piezas => 1
    ))
  end

  it "renders new implemento form" do
    render

    assert_select "form[action=?][method=?]", implementos_path, "post" do

      assert_select "input#implemento_name[name=?]", "implemento[name]"

      assert_select "input#implemento_piezas[name=?]", "implemento[piezas]"
    end
  end
end
