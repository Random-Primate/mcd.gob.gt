require "rails_helper"

RSpec.describe PueblosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pueblos").to route_to("pueblos#index")
    end

    it "routes to #new" do
      expect(:get => "/pueblos/new").to route_to("pueblos#new")
    end

    it "routes to #show" do
      expect(:get => "/pueblos/1").to route_to("pueblos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pueblos/1/edit").to route_to("pueblos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pueblos").to route_to("pueblos#create")
    end

    it "routes to #update" do
      expect(:put => "/pueblos/1").to route_to("pueblos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pueblos/1").to route_to("pueblos#destroy", :id => "1")
    end

  end
end
