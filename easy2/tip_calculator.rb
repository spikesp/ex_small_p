puts "what is the bill?"
bill = gets.to_f
puts "what is the tip percentage?"
tip_percentage = gets.to_f * 0.01
tip = (bill * tip_percentage)
total = bill + tip



puts "The tip is $ #{sprintf("%.2f", tip)}"
puts "The total is % #{sprintf("%.2f", total)}"