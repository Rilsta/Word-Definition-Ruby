class Word
  @@new_words = []

  define_method(:initialize) do |new_word|
    @new_word = new_word
    @id = @@new_words.length + 1
  end

  define_method(:new_word) do
    @new_word
  end

  define_singleton_method(:all) do
    @@new_words
  end

  define_method(:save) do
    @@new_words.push(self)
  end

  define_singleton_method(:clear) do
    @@new_words = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_item = nil
    @@new_words.each() do |new_word|
      if new_word.id() == identification.to_i
        found_item = new_word
      end
    end
    found_item
  end
end
