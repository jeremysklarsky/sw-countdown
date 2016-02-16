class HomeController < ApplicationController

  def index
    @countdown = Countdown.new
    @prediction = Prediction.new
    @quote = Quote.quote
  end

end
