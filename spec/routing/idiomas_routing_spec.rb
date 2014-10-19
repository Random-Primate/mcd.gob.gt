require "rails_helper"

RSpec.describe IdiomasController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/idiomas").to route_to("idiomas#index")
    end

    it "routes to #new" do
      expect(:get => "/idiomas/new").to route_to("idiomas#new")
    end

    it "routes to #show" do
      expect(:get => "/idiomas/1").to route_to("idiomas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/idiomas/1/edit").to route_to("idiomas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/idiomas").to route_to("idiomas#create")
    end

    it "routes to #update" do
      expect(:put => "/idiomas/1").to route_to("idiomas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/idiomas/1").to route_to("idiomas#destroy", :id => "1")
    end

  end
end
