require 'rails_helper'

RSpec.describe "departamentos/new", :type => :view do
  before(:each) do
    assign(:departamento, Departamento.new(
      :name => "MyString"
    ))
  end

  it "renders new departamento form" do
    render

    assert_select "form[action=?][method=?]", departamentos_path, "post" do

      assert_select "input#departamento_name[name=?]", "departamento[name]"
    end
  end
end
