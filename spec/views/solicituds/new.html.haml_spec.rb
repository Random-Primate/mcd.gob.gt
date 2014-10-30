require 'rails_helper'

RSpec.describe "solicituds/new", :type => :view do
=begin
  before(:each) do
    assign(:solicitud, Solicitud.new(
      :comunidades => "MyText",
      :municipio => "MyString",
      :departamento => "MyString",
      :implementos => "MyText",
      :solicitante => nil
    ))
  end

  it "renders new solicitud form" do
    render

    assert_select "form[action=?][method=?]", solicituds_path, "post" do

      assert_select "textarea#solicitud_comunidades[name=?]", "solicitud[comunidades]"

      assert_select "input#solicitud_municipio[name=?]", "solicitud[municipio]"

      assert_select "input#solicitud_departamento[name=?]", "solicitud[departamento]"

      assert_select "textarea#solicitud_implementos[name=?]", "solicitud[implementos]"

      assert_select "input#solicitud_solicitante_id[name=?]", "solicitud[solicitante_id]"
    end
  end
=end
end
