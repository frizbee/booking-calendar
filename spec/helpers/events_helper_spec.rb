require 'rails_helper'

RSpec.describe EventsHelper, type: :helper do

  describe "event_day" do
    event = Event.create(title: "test", begin_date: Date.today, end_date: Date.today + 3.day)
    day = Date.today
    it "should not be nil" do
      example1 = event_day(event,day)
      expect(example1).not_to be_nil
    end

    it "return exact day furst_day" do
      example2 = event_day(event,day)
      expect(example2).to eq 'first_day'
    end

    it "return last day" do
      day = Date.today + 3.day
      example3 = event_day(event,day)
      expect(example3).to eq 'last_day'
    end

    it "return full if calendar in middle" do
      day = Date.today + 1.day
      example4 = event_day(event,day)
      expect(example4).to eq 'full'
    end

    it "return empty str if day out of date_range" do
      day = Date.today + 5.day
      example5 = event_day(event,day)
      expect(example5).to eq ''
    end
  end
end
