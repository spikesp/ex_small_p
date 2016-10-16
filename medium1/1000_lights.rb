def togle(switches, lights)
  lights.each { |light| switches[light] == 1 ? switches[light] = 0 : switches[light] = 1 }
end


def light_on(arr_switches, num_lights)
    base = 2
    
  2.upto(10) do |index|
    lights = []
    1.upto(num_lights/2) do |x| 
      lights << base * x
    end
    base += 1
    togle(arr_switches, lights)

  end
  arr_switches[1..num_lights]

end

p light_on([1,1,1,1,1,1,1,1,1,1,1], 10)

# official solution

def toggle_on_or_off(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == "off" ? lights[position] = "on" : lights[position] = "off"
      end
    end
  end
end

def on_lights(lights)
  lights.key.select { |key| lights[key] == "on" }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = "off" }
toggle_on_or_off(lights)
p on_lights(lights)
p on_lights(lights).size


