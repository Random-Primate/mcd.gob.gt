require 'rails_helper'

RSpec.describe "departamentos/edit", :type => :view do
  before(:each) do
    @departamento = assign(:departamento, Departamento.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit departamento form" do
    render

    assert_select "form[action=?][method=?]", departamento_path(@departamento), "post" do

      assert_select "input#departamento_name[name=?]", "departamento[name]"
    end
  end
end
