MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = MINUTES_PER_HOUR * 24

def after_midnight(time_str)
  arr =[]
  arr = time_str.split(':')
  if arr[0] == '24'
    arr[0] = 0
    minutes = arr[0].to_i * MINUTES_PER_HOUR + arr[1].to_i
  else
    minutes = arr[0].to_i * MINUTES_PER_HOUR + arr[1].to_i
  end
end

def before_midnight(time_str)
  arr =[]
  arr = time_str.split(':')
  if arr[0] == '24'or arr[1] == '00'
    arr[0] = 0
    minutes = (arr[0].to_i * MINUTES_PER_HOUR + arr[1].to_i)
  else
    minutes = MINUTES_PER_DAY - (arr[0].to_i * MINUTES_PER_HOUR + arr[1].to_i)
  end
end

## samrt solution
#
#HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end


p after_midnight('12:34')
p after_midnight('00:00')
p after_midnight('24:00')

p before_midnight('00:00')
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0