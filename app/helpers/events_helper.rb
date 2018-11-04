module EventsHelper
  def event_day(event,day)
    if event.begin_date == day
      result = 'first_day'
    elsif event.end_date == day
      result = 'last_day'
    elsif (event.begin_date..event.end_date).cover?(day)
      result = 'full'
    else
      result = ''
    end
    result
  end
end
