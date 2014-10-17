require 'rails_helper'

RSpec.describe "municipios/show", :type => :view do
  before(:each) do
    @municipio = assign(:municipio, Municipio.create!(
      :name => "Name",
      :departamento_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
