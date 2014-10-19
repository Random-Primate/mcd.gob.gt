require 'rails_helper'

RSpec.describe "idiomas/edit", :type => :view do
  before(:each) do
    @idioma = assign(:idioma, Idioma.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit idioma form" do
    render

    assert_select "form[action=?][method=?]", idioma_path(@idioma), "post" do

      assert_select "input#idioma_name[name=?]", "idioma[name]"
    end
  end
end
