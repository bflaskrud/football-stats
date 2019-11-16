require 'rails_helper'

RSpec.describe StatsController, type: :controller do
  describe "stats#index action" do 
    it "should successfully show the page" do 
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
