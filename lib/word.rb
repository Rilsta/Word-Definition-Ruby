class Word
  @@new_words = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@new_words.length + 1
  end

  define_method(:name) do
    @name
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
    @@new_words.each() do |name|
      if name.id() == identification.to_i
        found_item = name
      end
    end
    found_item
  end
end
