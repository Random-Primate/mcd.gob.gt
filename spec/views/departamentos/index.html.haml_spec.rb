require 'rails_helper'

RSpec.describe "departamentos/index", :type => :view do
=begin
  before(:each) do
    assign(:departamentos, [
      Departamento.create!(
        :name => "Name"
      ),
      Departamento.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of departamentos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
=end
end
