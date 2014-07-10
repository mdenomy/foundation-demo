class Event < ActiveRecord::Base

  scope :upcoming, -> {where('date >= ?', Date.current).order(:date)}

end
