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
      date_range = (Date.today.beginning_of_week..Date.today.end_of_week).to_a
      @events = Event.create(title: "Booked by John", begin_date: Date.today, end_date: Date.today + 3.day)
    it "assign date_rage" do
      get :index
      expect(assigns(:date_range)).to match_array(date_range)
    end

    it "should events" do
      get :index
      expect(assigns(:events)).not_to be_nil
    end
  end

end
