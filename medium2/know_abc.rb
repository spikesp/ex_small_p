COLLECT = ["BO", "XK", "DQ", "CP", "NA", "GT", "RE", "FS", "JW", "HU", "VI", "LY", "ZM"]

def block_word?(string)
  result = []
  string.upcase.chars.each do |letter|
    COLLECT.each do |word|
      if word.include?(letter)
        result << word
      end
    end
  end
  result.uniq == result ? true : false
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')