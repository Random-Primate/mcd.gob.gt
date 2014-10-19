require 'rails_helper'

RSpec.describe "pueblos/new", :type => :view do
  before(:each) do
    assign(:pueblo, Pueblo.new(
      :name => "MyString"
    ))
  end

  it "renders new pueblo form" do
    render

    assert_select "form[action=?][method=?]", pueblos_path, "post" do

      assert_select "input#pueblo_name[name=?]", "pueblo[name]"
    end
  end
end
