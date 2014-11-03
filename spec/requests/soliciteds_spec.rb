require 'rails_helper'

RSpec.describe "Soliciteds", :type => :request do
  describe "GET /soliciteds" do
    it "works! (now write some real specs)" do
      get soliciteds_path
      expect(response).to have_http_status(200)
    end
  end
end
