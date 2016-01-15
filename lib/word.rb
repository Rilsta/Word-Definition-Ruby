class Word
  @@new_words = []

  define_method(:initialize) do |new_word|
    @new_word = new_word
  end

  define_method(:new_word) do
    @new_word
  end

  define_singleton_method(:all) do
    @@new_words
  end

end
