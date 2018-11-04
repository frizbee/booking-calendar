class EventsController < ApplicationController

  before_action :date
  before_action :set_events
  before_action :set_date_range

  def index
  end

  def create
    event = Event.new(event_params)
    if event.valid?
      event.save
    end
  end

  private

  def set_date_range
    @date_range = (date.beginning_of_week..date.end_of_week).to_a
    @date_range
  end

  def set_events
    @events = Event.where('begin_date <= ? AND end_date >= ?', date.end_of_week, date.beginning_of_week)
    @events
  end

  def date
    params.fetch(:date, Date.today).to_date
  end

  def event_params
    params.require(:event).permit(:title, :begin_date, :end_date)
  end
end
