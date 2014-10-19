require 'rails_helper'

RSpec.describe "pueblos/show", :type => :view do
  before(:each) do
    @pueblo = assign(:pueblo, Pueblo.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
