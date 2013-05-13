require 'spec_helper'

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

describe DistributorsController do

  # This should return the minimal set of attributes required to create a valid
  # Distributor. As you add validations to Distributor, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DistributorsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all distributors as @distributors" do
      distributor = Distributor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:distributors).should eq([distributor])
    end
  end

  describe "GET show" do
    it "assigns the requested distributor as @distributor" do
      distributor = Distributor.create! valid_attributes
      get :show, {:id => distributor.to_param}, valid_session
      assigns(:distributor).should eq(distributor)
    end
  end

  describe "GET new" do
    it "assigns a new distributor as @distributor" do
      get :new, {}, valid_session
      assigns(:distributor).should be_a_new(Distributor)
    end
  end

  describe "GET edit" do
    it "assigns the requested distributor as @distributor" do
      distributor = Distributor.create! valid_attributes
      get :edit, {:id => distributor.to_param}, valid_session
      assigns(:distributor).should eq(distributor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Distributor" do
        expect {
          post :create, {:distributor => valid_attributes}, valid_session
        }.to change(Distributor, :count).by(1)
      end

      it "assigns a newly created distributor as @distributor" do
        post :create, {:distributor => valid_attributes}, valid_session
        assigns(:distributor).should be_a(Distributor)
        assigns(:distributor).should be_persisted
      end

      it "redirects to the created distributor" do
        post :create, {:distributor => valid_attributes}, valid_session
        response.should redirect_to(Distributor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved distributor as @distributor" do
        # Trigger the behavior that occurs when invalid params are submitted
        Distributor.any_instance.stub(:save).and_return(false)
        post :create, {:distributor => { "name" => "invalid value" }}, valid_session
        assigns(:distributor).should be_a_new(Distributor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Distributor.any_instance.stub(:save).and_return(false)
        post :create, {:distributor => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested distributor" do
        distributor = Distributor.create! valid_attributes
        # Assuming there are no other distributors in the database, this
        # specifies that the Distributor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Distributor.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => distributor.to_param, :distributor => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested distributor as @distributor" do
        distributor = Distributor.create! valid_attributes
        put :update, {:id => distributor.to_param, :distributor => valid_attributes}, valid_session
        assigns(:distributor).should eq(distributor)
      end

      it "redirects to the distributor" do
        distributor = Distributor.create! valid_attributes
        put :update, {:id => distributor.to_param, :distributor => valid_attributes}, valid_session
        response.should redirect_to(distributor)
      end
    end

    describe "with invalid params" do
      it "assigns the distributor as @distributor" do
        distributor = Distributor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Distributor.any_instance.stub(:save).and_return(false)
        put :update, {:id => distributor.to_param, :distributor => { "name" => "invalid value" }}, valid_session
        assigns(:distributor).should eq(distributor)
      end

      it "re-renders the 'edit' template" do
        distributor = Distributor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Distributor.any_instance.stub(:save).and_return(false)
        put :update, {:id => distributor.to_param, :distributor => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested distributor" do
      distributor = Distributor.create! valid_attributes
      expect {
        delete :destroy, {:id => distributor.to_param}, valid_session
      }.to change(Distributor, :count).by(-1)
    end

    it "redirects to the distributors list" do
      distributor = Distributor.create! valid_attributes
      delete :destroy, {:id => distributor.to_param}, valid_session
      response.should redirect_to(distributors_url)
    end
  end

end
