def cleanup(string)
  result = string.scan(/\w+/).join(' ')
  result.insert(0, ' ')
  result.insert(-1, ' ')
  result
end

p cleanup("---what's my +*& line?")


## smarter solution
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end