require "rails_helper"

RSpec.describe BeneficiariosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/beneficiarios").to route_to("beneficiarios#index")
    end

    it "routes to #new" do
      expect(:get => "/beneficiarios/new").to route_to("beneficiarios#new")
    end

    it "routes to #show" do
      expect(:get => "/beneficiarios/1").to route_to("beneficiarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/beneficiarios/1/edit").to route_to("beneficiarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/beneficiarios").to route_to("beneficiarios#create")
    end

    it "routes to #update" do
      expect(:put => "/beneficiarios/1").to route_to("beneficiarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/beneficiarios/1").to route_to("beneficiarios#destroy", :id => "1")
    end

  end
end
