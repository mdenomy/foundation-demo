class StaticPagesController < ApplicationController

  def home
    @reviews = Review.limit(4)
    @events = Event.upcoming
  end
end