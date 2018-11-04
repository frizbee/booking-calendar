class EventsController < ApplicationController
  def index
    @date_range = Date.today.beginning_of_week..Date.today.end_of_week
  end

  def create
  end
end
