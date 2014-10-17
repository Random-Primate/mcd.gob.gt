require 'rails_helper'

RSpec.describe "municipios/edit", :type => :view do
  before(:each) do
    @municipio = assign(:municipio, Municipio.create!(
      :name => "MyString",
      :departamento_id => 1
    ))
  end

  it "renders the edit municipio form" do
    render

    assert_select "form[action=?][method=?]", municipio_path(@municipio), "post" do

      assert_select "input#municipio_name[name=?]", "municipio[name]"

      assert_select "input#municipio_departamento_id[name=?]", "municipio[departamento_id]"
    end
  end
end
