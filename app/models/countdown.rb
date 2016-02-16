class Countdown

  attr_accessor :my_days, :my_hours, :my_minutes, :my_seconds, :my_years, :year_grammar

  def initialize
    my_seconds = Time.new(2017, 12, 15, 12, 0, 0, "+09:00") - Time.now

    seconds = 1
    minutes = seconds * 60
    hours = minutes * 60
    days = hours * 24
    years = days * 365

    years_str = (my_seconds / years).to_s
    days_str = (('.' + years_str.split('.').last).to_f * years / days).to_s
    hours_str = (('.' + days_str.split('.').last).to_f * days / hours).to_s
    minutes_str = (('.' + hours_str.split('.').last).to_f * hours / minutes).to_s 
    seconds_str = (('.' + minutes_str.split('.').last).to_f * minutes / seconds).to_s

    @my_days = display(days_str)
    @my_years = display(years_str)
    @my_hours = display(hours_str)
    @my_minutes = display(minutes_str)
    @my_seconds = display(seconds_str)
  end

  def year_grammar
    binding.pry
    @my_years == 1 ? 'is' : 'are'
  end

  private
    def display(str)
      str.split('.').first
    end

end
