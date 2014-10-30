require 'rails_helper'

RSpec.describe "beneficiarios/new", :type => :view do
=begin
  before(:each) do
    assign(:beneficiario, Beneficiario.new(
      :cui => "MyString",
      :first_name => "MyString",
      :second_first_name => "MyString",
      :first_last_name => "MyString",
      :second_last_name => "MyString",
      :menor => false
    ))
  end

  it "renders new beneficiario form" do
    render

    assert_select "form[action=?][method=?]", beneficiarios_path, "post" do

      assert_select "input#beneficiario_cui[name=?]", "beneficiario[cui]"

      assert_select "input#beneficiario_first_name[name=?]", "beneficiario[first_name]"

      assert_select "input#beneficiario_second_first_name[name=?]", "beneficiario[second_first_name]"

      assert_select "input#beneficiario_first_last_name[name=?]", "beneficiario[first_last_name]"

      assert_select "input#beneficiario_second_last_name[name=?]", "beneficiario[second_last_name]"

      assert_select "input#beneficiario_menor[name=?]", "beneficiario[menor]"
    end
  end
=end
end
