require 'rails_helper'

RSpec.describe "expedientes/edit", :type => :view do
  before(:each) do
    @expediente = assign(:expediente, Expediente.create!(
      :num_gestion => "MyString",
      :num_exp => "MyString"
    ))
  end

  it "renders the edit expediente form" do
    render

    assert_select "form[action=?][method=?]", expediente_path(@expediente), "post" do

      assert_select "input#expediente_num_gestion[name=?]", "expediente[num_gestion]"

      assert_select "input#expediente_num_exp[name=?]", "expediente[num_exp]"
    end
  end
end
