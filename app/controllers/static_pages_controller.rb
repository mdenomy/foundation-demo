class StaticPagesController < ApplicationController

  def home
    @reviews = Review.limit(4)
    @events = Event.all.order(:date)
  end
end