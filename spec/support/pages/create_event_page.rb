class CreateEventPage
  include Capybara::DSL
  include FactoryGirl::Syntax::Methods
  include Rails.application.routes.url_helpers

  def initialize
    admin_user = create :admin_user
    visit new_admin_event_path
    
    fill_in "Email", with: admin_user.email
    fill_in "Password", with: admin_user.password
    click_button 'Login'
  end

  def enter_details(params)
    date = params[:date]
    select date.year.to_s, from: 'Year'
    select Date::MONTHNAMES[date.month], from: 'Month'
    select date.day.to_s, from: 'Day'
    fill_in 'Title', with: params[:title]
    fill_in 'Description', with: params[:description]
  end

  def create_event?
    click_on 'Create Event'
    page.has_content?('Event was successfully created')
  end
end
