require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe BeneficiariosController, :type => :controller do
=begin
  # This should return the minimal set of attributes required to create a valid
  # Beneficiario. As you add validations to Beneficiario, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BeneficiariosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all beneficiarios as @beneficiarios" do
      beneficiario = Beneficiario.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:beneficiarios)).to eq([beneficiario])
    end
  end

  describe "GET show" do
    it "assigns the requested beneficiario as @beneficiario" do
      beneficiario = Beneficiario.create! valid_attributes
      get :show, {:id => beneficiario.to_param}, valid_session
      expect(assigns(:beneficiario)).to eq(beneficiario)
    end
  end

  describe "GET new" do
    it "assigns a new beneficiario as @beneficiario" do
      get :new, {}, valid_session
      expect(assigns(:beneficiario)).to be_a_new(Beneficiario)
    end
  end

  describe "GET edit" do
    it "assigns the requested beneficiario as @beneficiario" do
      beneficiario = Beneficiario.create! valid_attributes
      get :edit, {:id => beneficiario.to_param}, valid_session
      expect(assigns(:beneficiario)).to eq(beneficiario)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Beneficiario" do
        expect {
          post :create, {:beneficiario => valid_attributes}, valid_session
        }.to change(Beneficiario, :count).by(1)
      end

      it "assigns a newly created beneficiario as @beneficiario" do
        post :create, {:beneficiario => valid_attributes}, valid_session
        expect(assigns(:beneficiario)).to be_a(Beneficiario)
        expect(assigns(:beneficiario)).to be_persisted
      end

      it "redirects to the created beneficiario" do
        post :create, {:beneficiario => valid_attributes}, valid_session
        expect(response).to redirect_to(Beneficiario.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved beneficiario as @beneficiario" do
        post :create, {:beneficiario => invalid_attributes}, valid_session
        expect(assigns(:beneficiario)).to be_a_new(Beneficiario)
      end

      it "re-renders the 'new' template" do
        post :create, {:beneficiario => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested beneficiario" do
        beneficiario = Beneficiario.create! valid_attributes
        put :update, {:id => beneficiario.to_param, :beneficiario => new_attributes}, valid_session
        beneficiario.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested beneficiario as @beneficiario" do
        beneficiario = Beneficiario.create! valid_attributes
        put :update, {:id => beneficiario.to_param, :beneficiario => valid_attributes}, valid_session
        expect(assigns(:beneficiario)).to eq(beneficiario)
      end

      it "redirects to the beneficiario" do
        beneficiario = Beneficiario.create! valid_attributes
        put :update, {:id => beneficiario.to_param, :beneficiario => valid_attributes}, valid_session
        expect(response).to redirect_to(beneficiario)
      end
    end

    describe "with invalid params" do
      it "assigns the beneficiario as @beneficiario" do
        beneficiario = Beneficiario.create! valid_attributes
        put :update, {:id => beneficiario.to_param, :beneficiario => invalid_attributes}, valid_session
        expect(assigns(:beneficiario)).to eq(beneficiario)
      end

      it "re-renders the 'edit' template" do
        beneficiario = Beneficiario.create! valid_attributes
        put :update, {:id => beneficiario.to_param, :beneficiario => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested beneficiario" do
      beneficiario = Beneficiario.create! valid_attributes
      expect {
        delete :destroy, {:id => beneficiario.to_param}, valid_session
      }.to change(Beneficiario, :count).by(-1)
    end

    it "redirects to the beneficiarios list" do
      beneficiario = Beneficiario.create! valid_attributes
      delete :destroy, {:id => beneficiario.to_param}, valid_session
      expect(response).to redirect_to(beneficiarios_url)
    end
  end
=end
end
