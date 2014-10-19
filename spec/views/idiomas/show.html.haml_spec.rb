require 'rails_helper'

RSpec.describe "idiomas/show", :type => :view do
  before(:each) do
    @idioma = assign(:idioma, Idioma.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
