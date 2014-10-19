require 'rails_helper'

RSpec.describe "idiomas/new", :type => :view do
  before(:each) do
    assign(:idioma, Idioma.new(
      :name => "MyString"
    ))
  end

  it "renders new idioma form" do
    render

    assert_select "form[action=?][method=?]", idiomas_path, "post" do

      assert_select "input#idioma_name[name=?]", "idioma[name]"
    end
  end
end
