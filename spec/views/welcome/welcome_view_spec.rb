require 'rails_helper'

RSpec.describe 'landing site' do
  it 'shows a welcome message' do
    page.should have_content('Welcome')
  end

=begin
before(:each) do
    assign(:active_country, ActiveCountry.new(
      :name => "MyString",
      :iso => "MyString"
    ))
  end

  it "renders new active_country form" do
    render

    assert_select "form[action=?][method=?]", active_countries_path, "post" do

      assert_select "input#active_country_name[name=?]", "active_country[name]"

      assert_select "input#active_country_iso[name=?]", "active_country[iso]"
    end
  end

  describe "routing" do

    it "routes to #index" do
      expect(:get => "/active_countries").to route_to("active_countries#index")
    end

    it "routes to #new" do
      expect(:get => "/active_countries/new").to route_to("active_countries#new")
    end

    it "routes to #show" do
      expect(:get => "/active_countries/1").to route_to("active_countries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/active_countries/1/edit").to route_to("active_countries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/active_countries").to route_to("active_countries#create")
    end

    it "routes to #update" do
      expect(:put => "/active_countries/1").to route_to("active_countries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/active_countries/1").to route_to("active_countries#destroy", :id => "1")
    end

  end
=end

end