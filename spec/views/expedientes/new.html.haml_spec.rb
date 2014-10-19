require 'rails_helper'

RSpec.describe "expedientes/new", :type => :view do
  before(:each) do
    assign(:expediente, Expediente.new(
      :num_gestion => "MyString",
      :num_exp => "MyString"
    ))
  end

  it "renders new expediente form" do
    render

    assert_select "form[action=?][method=?]", expedientes_path, "post" do

      assert_select "input#expediente_num_gestion[name=?]", "expediente[num_gestion]"

      assert_select "input#expediente_num_exp[name=?]", "expediente[num_exp]"
    end
  end
end
