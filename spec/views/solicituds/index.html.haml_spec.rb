require 'rails_helper'

RSpec.describe "solicituds/index", :type => :view do
=begin
  before(:each) do
    assign(:solicituds, [
      Solicitud.create!(
        :comunidades => "MyText",
        :municipio => "Municipio",
        :departamento => "Departamento",
        :implementos => "MyText",
        :solicitante => nil
      ),
      Solicitud.create!(
        :comunidades => "MyText",
        :municipio => "Municipio",
        :departamento => "Departamento",
        :implementos => "MyText",
        :solicitante => nil
      )
    ])
  end

  it "renders a list of solicituds" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Municipio".to_s, :count => 2
    assert_select "tr>td", :text => "Departamento".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
=end
end
