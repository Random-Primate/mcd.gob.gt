require 'rails_helper'

RSpec.describe "pueblos/edit", :type => :view do
  before(:each) do
    @pueblo = assign(:pueblo, Pueblo.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit pueblo form" do
    render

    assert_select "form[action=?][method=?]", pueblo_path(@pueblo), "post" do

      assert_select "input#pueblo_name[name=?]", "pueblo[name]"
    end
  end
end
