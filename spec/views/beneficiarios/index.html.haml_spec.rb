require 'rails_helper'

RSpec.describe "beneficiarios/index", :type => :view do
  before(:each) do
    assign(:beneficiarios, [
      Beneficiario.create!(
        :cui => "Cui",
        :first_name => "First Name",
        :second_first_name => "Second First Name",
        :first_last_name => "First Last Name",
        :second_last_name => "Second Last Name",
        :menor => false
      ),
      Beneficiario.create!(
        :cui => "Cui",
        :first_name => "First Name",
        :second_first_name => "Second First Name",
        :first_last_name => "First Last Name",
        :second_last_name => "Second Last Name",
        :menor => false
      )
    ])
  end

  it "renders a list of beneficiarios" do
    render
    assert_select "tr>td", :text => "Cui".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Second First Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Second Last Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
