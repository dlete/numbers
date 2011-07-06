require "spec_helper"

describe CashReceiptsController do
  describe "routing" do

    it "routes to #index" do
      get("/cash_receipts").should route_to("cash_receipts#index")
    end

    it "routes to #new" do
      get("/cash_receipts/new").should route_to("cash_receipts#new")
    end

    it "routes to #show" do
      get("/cash_receipts/1").should route_to("cash_receipts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cash_receipts/1/edit").should route_to("cash_receipts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cash_receipts").should route_to("cash_receipts#create")
    end

    it "routes to #update" do
      put("/cash_receipts/1").should route_to("cash_receipts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cash_receipts/1").should route_to("cash_receipts#destroy", :id => "1")
    end

  end
end
