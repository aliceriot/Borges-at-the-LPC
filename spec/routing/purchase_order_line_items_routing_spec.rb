require "spec_helper"

describe PurchaseOrderLineItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/purchase_order_line_items").should route_to("purchase_order_line_items#index")
    end

    it "routes to #new" do
      get("/purchase_order_line_items/new").should route_to("purchase_order_line_items#new")
    end

    it "routes to #show" do
      get("/purchase_order_line_items/1").should route_to("purchase_order_line_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/purchase_order_line_items/1/edit").should route_to("purchase_order_line_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/purchase_order_line_items").should route_to("purchase_order_line_items#create")
    end

    it "routes to #update" do
      put("/purchase_order_line_items/1").should route_to("purchase_order_line_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/purchase_order_line_items/1").should route_to("purchase_order_line_items#destroy", :id => "1")
    end

  end
end
