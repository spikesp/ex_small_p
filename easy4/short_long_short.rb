def short_long_short(string1, string2)
  short_str = ''
  long_str = ''
  if string1.size > string2.size
    long_str = string1
    short_str = string2
  else
    long_str = string2
    short_str = string1
  end

  short_str + long_str + short_str
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"