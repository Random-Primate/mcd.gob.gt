require 'rails_helper'

RSpec.describe "idiomas/index", :type => :view do
=begin
  before(:each) do
    assign(:idiomas, [
      Idioma.create!(
        :name => "Name"
      ),
      Idioma.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of idiomas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
=end
end
