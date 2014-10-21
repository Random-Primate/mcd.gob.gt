require 'rails_helper'

RSpec.describe "solicituds/show", :type => :view do
  before(:each) do
    @solicitud = assign(:solicitud, Solicitud.create!(
      :comunidades => "MyText",
      :municipio => "Municipio",
      :departamento => "Departamento",
      :implementos => "MyText",
      :solicitante => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Municipio/)
    expect(rendered).to match(/Departamento/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
