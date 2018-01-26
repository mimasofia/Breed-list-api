require 'rails_helper'

RSpec.describe "BreedLists", type: :request do
  describe "GET /breed_lists" do
    it "works! (now write some real specs)" do
      get breed_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
