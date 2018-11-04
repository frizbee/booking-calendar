class EventsController < ApplicationController
  def index
    date = params.fetch(:date, Date.today).to_date
    @date_range = (date.beginning_of_week..date.end_of_week).to_a
  end

  def create
  end
end
