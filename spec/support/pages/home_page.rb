class HomePage
  include Capybara::DSL
  include FactoryGirl::Syntax::Methods
  include Rails.application.routes.url_helpers

  def initialize
    visit root_path
  end

  def has_event?(event)
    page.all('.event').each do |node| 
      return true if match_found?(node, event)
    end
    false
  end

  def show_events_in_order(*events)
    nodes = page.all('.event')
    return false unless nodes.count == events.count
    nodes.each_with_index{|node, i| return false unless match_found?(node, events[i])}
    true
  end

  private 

  def match_found?(node, event)
    node.has_css?('.date', text: event[:date].strftime("%m/%d/%Y")) &&
    node.has_css?('.title', text: event[:title]) &&
    node.has_css?('.description', text: event[:description])
  end
end