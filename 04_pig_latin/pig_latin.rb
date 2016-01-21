def translate(str)
  letters = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = letters - vowels
    
  str2 = str.gsub(/\w+/) do|word|
    if word[0..1] == 'qu' || word[0..2] == 'squ'
      que = word.index(/[ai]/)
      word[que, word.length-que] + word[0, que] + "ay"
    elsif vowels.include?(word.downcase[0])
      word + "ay"
    else
      idx = word.index(/[aeiou]/)
      word[idx, word.length-idx] + word[0,idx] + "ay"
    end
  end
end