require 'spec_helper'

feature 'events on homepage' do

  scenario 'ordered by date' do
    event1 = create :event, date: Date.current + 1.week
    event2 = create :event, date: Date.current
    event3 = create :event, date: Date.current + 1.day

    homepage = HomePage.new
    expect(homepage.show_events_in_order(event2, event3, event1)).to be_true
  end

  scenario 'only show upcoming events' do
    next_weeks_event = create :event, date: Date.current + 1.week
    todays_event = create :event, date: Date.current
    yesterdays_event = create :event, date: Date.current - 1.day

    homepage = HomePage.new
    expect(homepage.show_events_in_order(todays_event, next_weeks_event)).to be_true
  end

  scenario 'limit upcoming events to next 30 days' do
    todays_event = create :event, date: Date.current
    last_upcoming_event = create :event, date: Date.current + 30.days
    furure_event = create :event, date: Date.current + 31.days

    homepage = HomePage.new
    expect(homepage.show_events_in_order(todays_event, last_upcoming_event)).to be_true
  end
end