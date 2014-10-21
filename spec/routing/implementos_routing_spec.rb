require "rails_helper"

RSpec.describe ImplementosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/implementos").to route_to("implementos#index")
    end

    it "routes to #new" do
      expect(:get => "/implementos/new").to route_to("implementos#new")
    end

    it "routes to #show" do
      expect(:get => "/implementos/1").to route_to("implementos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/implementos/1/edit").to route_to("implementos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/implementos").to route_to("implementos#create")
    end

    it "routes to #update" do
      expect(:put => "/implementos/1").to route_to("implementos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/implementos/1").to route_to("implementos#destroy", :id => "1")
    end

  end
end
