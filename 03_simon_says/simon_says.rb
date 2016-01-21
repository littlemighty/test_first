def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(x, y=2)
  ([x] * y).join ' '
end

def start_of_word(x, y)
  x[0,y]
end

def first_word(input)
  input.split.first
end

  def titleize(title)
    stop_words = %w(and in the of over a an)
    title.capitalize.gsub( /\S+/ ) { |w| stop_words.include?(w) ? w : w.capitalize }
  end