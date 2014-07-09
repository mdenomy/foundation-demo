require 'spec_helper'

feature 'events' do
  
  scenario 'manager creates an event' do

    new_event_page = CreateEventPage.new

    new_event_page.enter_details(
      date: Date.current, 
      title: 'American Sparklers',
      description: "Celebrate the 4th of July with some fireworks of your own as we check out some great American sparkling wines."
    )

    expect(new_event_page.create_event?).to be_true
  end
end
