require 'spec_helper'

feature 'events' do
  
  scenario 'manager creates an event' do
    event_params = {
      date: Date.current, 
      title: 'American Sparklers',
      description: "Celebrate the 4th of July with some fireworks of your own as we check out some great American sparkling wines."
    }

    new_event_page = CreateEventPage.new
    new_event_page.create_event(event_params)

    home_page = HomePage.new
    expect(home_page).to have_event(event_params)
  end
end
