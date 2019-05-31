def subtract_some_time(time, amount, seconds)
  # given time type
  # remove that from given seconds and return seconds
  return seconds -= amount * 60 if time == :m
end

def how_many_of_time(time, seconds)
  # given seconds - return seconds minus whatev time type
  return seconds / 60 if time == :m
end

# have a check in sub_time ? check for enough seconds of whatever

def show_time(t_a_a)
  str = ""
  t_a_a.each_with_index do |sub, i|
    str += "#{sub[1]} #{sub[0]}"
    str += "s" if sub[1] > 1
    str += " and " if i == t_a_a.length - 2
  end
  return str
end

def subtract_some_time(time, amount, seconds)
  # given time type
  # remove that from given seconds and return seconds
  return seconds -= amount * 60 if time == :m
end

def how_many_of_time(time, seconds)
  # given seconds - return seconds minus whatev time type
  return seconds / 60 if time == :m
end

def format_duration(seconds)
  return "now" if seconds == 0
  str = []
  [:minute, :second].each_with_index do |time|
    if seconds > 60 && time == :minute
      m = how_many_of_time(:m, seconds)
      seconds = subtract_some_time(:m, m, seconds)
      str.push([:minute, m])
    elsif time == :second
#       puts "pre : #{seconds}"
#       puts "str: #{str}"
      str.push([:second, seconds])
#       puts "str: #{str}"
    end
  end
#   puts "str f: #{str}"
  return show_time(str)
end
