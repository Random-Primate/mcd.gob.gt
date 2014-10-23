require 'rails_helper'

RSpec.describe "Beneficiarios", :type => :request do
  describe "GET /beneficiarios" do
    it "works! (now write some real specs)" do
      get beneficiarios_path
      expect(response).to have_http_status(200)
    end
  end
end
