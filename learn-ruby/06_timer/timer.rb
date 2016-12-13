class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  def time_string
    x_seconds = @seconds
    x_minutes = 0
    x_hours = 0
    if x_seconds > 60
      x_minutes = x_seconds / 60
      x_seconds = x_seconds - (x_minutes*60)
      if x_minutes > 60
        x_hours = x_minutes / 60
        x_minutes = x_minutes - (x_hours*60)
      end
    end
    second_second_digit = x_seconds / 10
    first_second_digit = x_seconds - second_second_digit*10
    second_minute_digit = x_minutes / 10
    first_minute_digit = x_minutes - second_minute_digit*10
    second_hour_digit = x_hours / 10
    first_hour_digit = x_hours - second_hour_digit*10
    hour_min_sec =  second_hour_digit.to_s + first_hour_digit.to_s + ":" + second_minute_digit.to_s + first_minute_digit.to_s + ":" + second_second_digit.to_s + first_second_digit.to_s
    return hour_min_sec
  end
end
