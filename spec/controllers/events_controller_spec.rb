require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET @events" do
    @events = Event.create(title: "Booked by John", begin_date: Date.today, end_date: Date.today + 3.day)
    it "assign date_rage" do
      get :index
      expect(assigns(:date_range)).to match_array([@events])
    end
  end

end
