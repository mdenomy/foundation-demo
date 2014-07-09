class HomePage
  include Capybara::DSL
  include FactoryGirl::Syntax::Methods
  include Rails.application.routes.url_helpers

  def initialize
    visit root_path
  end

  def has_event?(event)
    found = false
    page.all('.event').each do |node| 
      found = node.has_css?('.date', text: event[:date].strftime("%m/%d/%Y")) &&
              node.has_css?('.title', text: event[:title]) &&
              node.has_css?('.description', text: event[:description])
      break if found
    end
    found
  end
end