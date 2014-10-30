require 'rails_helper'

RSpec.describe "solicituds/edit", :type => :view do
=begin
  before(:each) do
    @solicitud = assign(:solicitud, Solicitud.create!(
      :comunidades => "MyText",
      :municipio => "MyString",
      :departamento => "MyString",
      :implementos => "MyText",
      :solicitante => nil
    ))
  end

  it "renders the edit solicitud form" do
    render

    assert_select "form[action=?][method=?]", solicitud_path(@solicitud), "post" do

      assert_select "textarea#solicitud_comunidades[name=?]", "solicitud[comunidades]"

      assert_select "input#solicitud_municipio[name=?]", "solicitud[municipio]"

      assert_select "input#solicitud_departamento[name=?]", "solicitud[departamento]"

      assert_select "textarea#solicitud_implementos[name=?]", "solicitud[implementos]"

      assert_select "input#solicitud_solicitante_id[name=?]", "solicitud[solicitante_id]"
    end
  end
=end
end
