class EventsController < ApplicationController
  def index
    date = params.fetch(:date, Date.today).to_date
    @date_range = (date.beginning_of_week..date.end_of_week).to_a
    @events = Event.where('begin_date <= ? AND end_date >= ?', date.end_of_week, date.beginning_of_week)
  end

  def create
  end
end
