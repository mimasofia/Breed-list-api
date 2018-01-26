require "rails_helper"

RSpec.describe BreedListsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/breed_lists").to route_to("breed_lists#index")
    end


    it "routes to #show" do
      expect(:get => "/breed_lists/1").to route_to("breed_lists#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/breed_lists").to route_to("breed_lists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/breed_lists/1").to route_to("breed_lists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/breed_lists/1").to route_to("breed_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/breed_lists/1").to route_to("breed_lists#destroy", :id => "1")
    end

  end
end
