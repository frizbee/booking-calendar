require 'rails_helper'

RSpec.describe Event, type: :model do

  let(:event) { Event.create(title: "Booked by John", begin_date: Date.today, end_date: Date.today + 3.day) }

  describe "Validation" do

    before :each do
      event
    end

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:begin_date) }
    it { is_expected.to validate_presence_of(:end_date) }

  end
end
