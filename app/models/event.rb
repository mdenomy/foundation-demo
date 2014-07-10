class Event < ActiveRecord::Base

  scope :upcoming, -> {where('date >= ? and date <= ?', Date.current, Date.current + 30.days).order(:date)}

end
