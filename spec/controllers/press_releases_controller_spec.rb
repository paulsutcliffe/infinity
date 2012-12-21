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

describe PressReleasesController do

  # This should return the minimal set of attributes required to create a valid
  # PressRelease. As you add validations to PressRelease, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PressReleasesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all press_releases as @press_releases" do
      press_release = PressRelease.create! valid_attributes
      get :index, {}, valid_session
      assigns(:press_releases).should eq([press_release])
    end
  end

  describe "GET show" do
    it "assigns the requested press_release as @press_release" do
      press_release = PressRelease.create! valid_attributes
      get :show, {:id => press_release.to_param}, valid_session
      assigns(:press_release).should eq(press_release)
    end
  end

  describe "GET new" do
    it "assigns a new press_release as @press_release" do
      get :new, {}, valid_session
      assigns(:press_release).should be_a_new(PressRelease)
    end
  end

  describe "GET edit" do
    it "assigns the requested press_release as @press_release" do
      press_release = PressRelease.create! valid_attributes
      get :edit, {:id => press_release.to_param}, valid_session
      assigns(:press_release).should eq(press_release)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PressRelease" do
        expect {
          post :create, {:press_release => valid_attributes}, valid_session
        }.to change(PressRelease, :count).by(1)
      end

      it "assigns a newly created press_release as @press_release" do
        post :create, {:press_release => valid_attributes}, valid_session
        assigns(:press_release).should be_a(PressRelease)
        assigns(:press_release).should be_persisted
      end

      it "redirects to the created press_release" do
        post :create, {:press_release => valid_attributes}, valid_session
        response.should redirect_to(PressRelease.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved press_release as @press_release" do
        # Trigger the behavior that occurs when invalid params are submitted
        PressRelease.any_instance.stub(:save).and_return(false)
        post :create, {:press_release => {}}, valid_session
        assigns(:press_release).should be_a_new(PressRelease)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PressRelease.any_instance.stub(:save).and_return(false)
        post :create, {:press_release => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested press_release" do
        press_release = PressRelease.create! valid_attributes
        # Assuming there are no other press_releases in the database, this
        # specifies that the PressRelease created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PressRelease.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => press_release.to_param, :press_release => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested press_release as @press_release" do
        press_release = PressRelease.create! valid_attributes
        put :update, {:id => press_release.to_param, :press_release => valid_attributes}, valid_session
        assigns(:press_release).should eq(press_release)
      end

      it "redirects to the press_release" do
        press_release = PressRelease.create! valid_attributes
        put :update, {:id => press_release.to_param, :press_release => valid_attributes}, valid_session
        response.should redirect_to(press_release)
      end
    end

    describe "with invalid params" do
      it "assigns the press_release as @press_release" do
        press_release = PressRelease.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PressRelease.any_instance.stub(:save).and_return(false)
        put :update, {:id => press_release.to_param, :press_release => {}}, valid_session
        assigns(:press_release).should eq(press_release)
      end

      it "re-renders the 'edit' template" do
        press_release = PressRelease.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PressRelease.any_instance.stub(:save).and_return(false)
        put :update, {:id => press_release.to_param, :press_release => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested press_release" do
      press_release = PressRelease.create! valid_attributes
      expect {
        delete :destroy, {:id => press_release.to_param}, valid_session
      }.to change(PressRelease, :count).by(-1)
    end

    it "redirects to the press_releases list" do
      press_release = PressRelease.create! valid_attributes
      delete :destroy, {:id => press_release.to_param}, valid_session
      response.should redirect_to(press_releases_url)
    end
  end

end
