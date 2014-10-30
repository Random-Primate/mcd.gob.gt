require 'rails_helper'

RSpec.describe "departamentos/show", :type => :view do
=begin
  before(:each) do
    @departamento = assign(:departamento, Departamento.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
=end
end
