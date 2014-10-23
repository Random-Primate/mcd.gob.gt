require 'rails_helper'

RSpec.describe "beneficiarios/show", :type => :view do
  before(:each) do
    @beneficiario = assign(:beneficiario, Beneficiario.create!(
      :cui => "Cui",
      :first_name => "First Name",
      :second_first_name => "Second First Name",
      :first_last_name => "First Last Name",
      :second_last_name => "Second Last Name",
      :menor => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cui/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Second First Name/)
    expect(rendered).to match(/First Last Name/)
    expect(rendered).to match(/Second Last Name/)
    expect(rendered).to match(/false/)
  end
end
