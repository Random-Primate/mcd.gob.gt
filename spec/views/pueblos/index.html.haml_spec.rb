require 'rails_helper'

RSpec.describe "pueblos/index", :type => :view do
  before(:each) do
    assign(:pueblos, [
      Pueblo.create!(
        :name => "Name"
      ),
      Pueblo.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of pueblos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
