require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/barangay_calls", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # BarangayCall. As you add validations to BarangayCall, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      BarangayCall.create! valid_attributes
      get barangay_calls_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      barangay_call = BarangayCall.create! valid_attributes
      get barangay_call_url(barangay_call)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_barangay_call_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      barangay_call = BarangayCall.create! valid_attributes
      get edit_barangay_call_url(barangay_call)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new BarangayCall" do
        expect {
          post barangay_calls_url, params: { barangay_call: valid_attributes }
        }.to change(BarangayCall, :count).by(1)
      end

      it "redirects to the created barangay_call" do
        post barangay_calls_url, params: { barangay_call: valid_attributes }
        expect(response).to redirect_to(barangay_call_url(BarangayCall.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new BarangayCall" do
        expect {
          post barangay_calls_url, params: { barangay_call: invalid_attributes }
        }.to change(BarangayCall, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post barangay_calls_url, params: { barangay_call: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested barangay_call" do
        barangay_call = BarangayCall.create! valid_attributes
        patch barangay_call_url(barangay_call), params: { barangay_call: new_attributes }
        barangay_call.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the barangay_call" do
        barangay_call = BarangayCall.create! valid_attributes
        patch barangay_call_url(barangay_call), params: { barangay_call: new_attributes }
        barangay_call.reload
        expect(response).to redirect_to(barangay_call_url(barangay_call))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        barangay_call = BarangayCall.create! valid_attributes
        patch barangay_call_url(barangay_call), params: { barangay_call: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested barangay_call" do
      barangay_call = BarangayCall.create! valid_attributes
      expect {
        delete barangay_call_url(barangay_call)
      }.to change(BarangayCall, :count).by(-1)
    end

    it "redirects to the barangay_calls list" do
      barangay_call = BarangayCall.create! valid_attributes
      delete barangay_call_url(barangay_call)
      expect(response).to redirect_to(barangay_calls_url)
    end
  end
end
