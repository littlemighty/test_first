class Book
  def title=(t)
    little_words = %w(a and an in the of )
    @title = t.capitalize.gsub( /\S+/ ) { |w| little_words.include?(w) ? w : w.capitalize }
  end

  def title
    @title
  end
end
