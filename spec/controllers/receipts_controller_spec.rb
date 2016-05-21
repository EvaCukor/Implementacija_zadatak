require 'rails_helper'

describe ReceiptsController do
  describe "GET new" do
    before do
      set_current_user
    end
    it "sets the @receipt variable" do
      get :new
      expect(assigns(:receipt)).to be_instance_of(Receipt)
    end
    # it "builds items" do
    #   get :new
    #   expect(assigns(:receipt)).items.to exist
    # end
  end
  
  describe "POST create" do
    before do
      set_current_user
    end
    
    context "with valid input" do
      let(:store) { Fabricate(:store) }
      before {post :create, receipt: {name: 'racun', store_id: store.id, "items_attributes"=>{"0"=>{"name"=>"majica", "price"=>100}}}}
      it "creates the receipt" do
        expect(Receipt.count).to eq(1)
      end
      it "redirects to the my receipts page" do
        expect(response).to redirect_to root_path
      end
    end
    
    context "with invalid input" do
      before {post :create, receipt: {name: 'racun'}}
      it "doesn't create the receipt" do
        expect(Receipt.count).to eq(0)
      end
      it "renders the new template" do
        expect(response).to render_template :new
      end
    end
  end
end