HASH = {"zero" => '0', "one" => '1', "two" => '2', "three" => '3', "four" => '4', "five" => '5', "six" => '6', "seven" => '7', "eight" => '8', "night" => '9' }

def word_to_digit(string)
  array = []
  string.split.each do |word|
    if HASH.has_key?(word.scan(/\w+/).join)
      array << word.sub!(/\w+/, HASH[word.scan(/\w+/).join])
    else
      array << word
    end
  end
  array.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

