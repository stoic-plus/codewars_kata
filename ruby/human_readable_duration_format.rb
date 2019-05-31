def show_time(t_a_a)
  str = ""
  t_a_a.each_with_index do |sub, i|
    str += "#{sub[1]} #{sub[0]}"
    str += "s" if sub[1] > 1
    if t_a_a[i + 1]
      if i + 1 == t_a_a.length - 1
        str += " and "
      else
        str += ", "
      end
    end
  end
  return str
end

def subtract_some_time(time, amount, seconds)
  return seconds -= amount * 31536000 if time == :year
  return seconds -= amount * 86400 if time == :day
  return seconds -= amount * 3600 if time == :hour
  return seconds -= amount * 60 if time == :minute
end

def how_many_of_time(time, seconds)
  return seconds / 31536000 if time == :year
  return seconds / 86400 if time == :day
  return seconds / 3600 if time == :hour
  return seconds / 60 if time == :minute
end

def format_duration(seconds)
  return "now" if seconds == 0
  duration = []
  [:year, :day, :hour, :minute, :second].each_with_index do |time|
    update = false
    case time
    when :year
      update = true unless seconds < 31536000
    when :day
      update = true unless seconds < 86400
    when :hour
      update = true unless seconds < 3600
    when :minute
      update = true unless seconds < 60
    else
      duration.push([:second, seconds]) if seconds > 0
    end
    if update
      amount = how_many_of_time(time, seconds)
      duration.push([time, amount])
      seconds = subtract_some_time(time, amount, seconds)
    end
  end
  return show_time(duration)
end
