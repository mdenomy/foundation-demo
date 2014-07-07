require 'spec_helper'

feature 'events' do
  
  scenario 'manager creates an event' do
    admin_user = create :admin_user
    visit new_admin_event_path
    
    fill_in "Email", with: admin_user.email
    fill_in "Password", with: admin_user.password
    click_button 'Login'

    today = Date.current
    select today.year.to_s, from: 'Year'
    select Date::MONTHNAMES[Date.today.month], from: 'Month'
    select today.day.to_s, from: 'Day'
    fill_in 'Title', with: 'American Sparklers'
    fill_in 'Description', with: "Celebrate the 4th of July with some fireworks of your own as we check out some great American sparkling wines."
    click_on 'Create Event'

    expect(page).to have_content('Event was successfully created')
  end
end